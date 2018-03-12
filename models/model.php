<?php

class Model extends DB {
    public $table = '';
    public $primary_key = '';
    
    public function all() {
        $sql = "SELECT * FROM `{$this->table}`";
        
        return $this->db_get_all($sql);
    }
    
    public function getOneBy($value, $field = null) {
        if ($field === null) {
            $field = $this->primary_key;
        }
        
        $sql = "SELECT * FROM `{$this->table}` WHERE `{$field}` = '" . $this->esc($value) . "' LIMIT 1";
        $rows = $this->db_get_all($sql);
        
        return isset($rows[0]) ? $rows[0] : false;
    }
    
    public function paginate($page, $per_page = 20, $where = '') {
        $page = abs(intval($page)) - 1;
        $skip = ($page - 1) * $per_page;
        
        $sql = "SELECT * FROM `{$this->table}` {$where} LIMIT {$per_page} OFFSET {$skip}";
        
        return $this->db_get_all($sql);
    }
}
