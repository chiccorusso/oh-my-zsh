# Alias per git
alias ame='git ame'
alias game='git ame'
alias gf='git flow'
alias gff='gf feature'
alias gpod='g push origin develop'
alias gbd='git branch -D'

# Alias per maven
#alias mvn="mvn-color"

# Alias per grunt
alias gr='grunt'
alias grs='grunt server'
alias grt='grunt test'

# Alias per maven
alias mci='mvn clean install'
alias mcit='mvn clean install -T2'
alias mit='mvn install -T2'
alias mcits='mvn clean install -T2 -Dmaven.test.skip'
alias mcitsd='mcits deploy -Pc,v,l,e,libs'
alias mits='mvn install -T2 -Dmaven.test.skip'
alias mex='mvn exec:exec'
alias mexo='mvn -o exec:exec'
alias mej='mvn exec:java'

# Alias vari
alias back='until ping -W1 -c1 yahoo.com; do sleep 5; done && say the internet is back'

# Mercurial
hg_branch() { hg branch 2> /dev/null | awk '{print "("$1")"}' }

do_hamster_current() { hamster-cli list | awk 'END {print $0}' | cut -d'|' -f2|sed 's/^ *//;s/ *$//'}
hamster_current() { if [[ -n $DISPLAY ]]; then echo "[$(do_hamster_current)]"; fi }

itunes_playing() {
    local state=`osascript -e 'tell application "iTunes" to player state as string'`
    if [[ "$state" = "playing" ]]; then
	currenttrack=`osascript -e 'tell application "iTunes" to name of current track as string'`
	currentartist=`osascript -e 'tell application "iTunes" to artist of current track as string'`
	echo "$fg[yellow](♬ $currenttrack-$currentartist)$reset_color";
    fi
}
