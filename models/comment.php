<?php

class Comment extends Model {
    public $table = 'comment';
    public $primary_key = 'comment_id';

    public function getCmtById($id) {
        $id_cmt = $id;
        $sql = "SELECT * FROM `{$this->table}` WHERE `post_id` = $id_cmt";
       
        return $this->db_get_all($sql);
    }
    
    public function addCmt($postData, $post_id) {
        $postData['post_id'] = $post_id;
        //$postData['user_id'] = $user_id;
        return $this->db_insert($this->table, $postData);
    }
}
