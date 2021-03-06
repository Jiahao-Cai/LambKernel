define plist
  set var $n = $arg0->pHead
  while $n
    print *($n)
    set var $n = $n->pNext
  end
  printf "\n"
end

define ptask
  set var $n = ready_list->pHead
  printf "***ready_list:***\n"
  while $n
    print *($n->pTask)
    set var $n = $n->pNext
  end
  set var $n = timer_list->pHead
  printf "***timer_list:***\n"
  while $n
    print *($n->pTask)
    set var $n = $n->pNext
  end
  set var $n = waiting_list->pHead
  printf "***waiting_list:***\n"
  while $n
    print *($n->pTask)
    set var $n = $n->pNext
  end
  printf "\n"
end


echo + target remote localhost:25501\n
target remote localhost:25501

symbol-file kernel.elf
