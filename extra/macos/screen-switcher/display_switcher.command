#! /bin/zsh
curr_res_setting=$(displayplacer list | tail -1)
extend_res_setting='displayplacer "id:AF7C1BCC-2C74-4385-9ED9-FFB69568CC40 res:2560x1440 hz:75 color_depth:8 enabled:true scaling:off origin:(0,0) degree:0" "id:37D8832A-2D66-02CA-B9F7-8F30A301B230 res:1512x982 hz:120 color_depth:8 enabled:true scaling:on origin:(2560,0) degree:0"'
mirror_res_setting='displayplacer "id:37D8832A-2D66-02CA-B9F7-8F30A301B230+AF7C1BCC-2C74-4385-9ED9-FFB69568CC40 res:1512x982 hz:120 color_depth:8 enabled:true scaling:on origin:(0,0) degree:0"'

if [ "$curr_res_setting" = "$extend_res_setting" ]
then
    eval "$mirror_res_setting"
else
    eval "$extend_res_setting"
fi

exit
