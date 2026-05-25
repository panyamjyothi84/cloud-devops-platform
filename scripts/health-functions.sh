#!/bin/bash

show_date() {
    date
}

show_date

show_user() {
     whoami
}

show_user

show_disk() {
     pwd
}

show_disk


show_scripts() {
      for file in *.sh
do
    echo "Found script: $file"
done

}

show_scripts
