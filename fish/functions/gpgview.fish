function gpgview
	set file_desc (file $argv[1])
    switch $file_desc
        case '*GPG symmetrically encrypted data*'
            set base_name (echo "/tmp/"(basename $argv[1] .gpg)"_"(random))
            gpg -q --output $base_name $argv[1]; and view $base_name; and wipe -sf $base_name
    end
end
