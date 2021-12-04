
def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array.sort {|a,b| b<=>a}
end

def sort_array_char_count(array)
    array.sort {|a,b| a.length <=> b.length}
end

def swap_elements(array,index = 1,destination = 2)
    target = array[index]
    array.delete_at(index)
    array.insert(destination, target)
end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    array.each.collect do |n|
        word = n.split("")
        word.delete_at(2)
        word.insert(2, "$")
        n = word.join("")
    end
end

def find_a(array)
    array.select {|n| n.start_with?("a", "A")}
end

def sum_array(array)
    array.inject {|sum, n| sum + n}
end

def add_s(array)
    array.each_with_index.collect do |n, index|
        index != 1 ? n = n + "s" : n
    end
end