{include file="header.tpl"}
    <div class="contentfull align-left">
        <h3>Browse election leaflets</h3>

        <h4>Parties</h4>
        <ul class="parties">
            {foreach from="$parties" item="party"}
                <li>
                    <a href="{$www_server}/parties/{$party->url_id}">{$party->name}</a>
                    <small><a href="{$www_server}/leaflets?a={$party->party_id}/" title="Leaflets attacking {$party->name}">view leaflets attacking this party</a></small>
                </li>
            {/foreach}
                <li class="more">
                    <a href="{$www_server}/parties">View all parties ...</a>
                </li>
        </ul>
        <h4>Tags</h4>
        <ul class="tagcloud">
            {foreach from="$weighted_tags" item="weighted_tag"}
                <li class="{if $weighted_tag->count < 1}tg1{elseif $weighted_tag->count < 3}tg2{elseif $weighted_tag->count < 5}tg3{elseif $weighted_tag->count < 10}tg4{elseif $weighted_tag->count < 30}tg5{else}tg6{/if}">
                    <a href="{$www_server}/tags/{$weighted_tag->tag}/">{$weighted_tag->tag}</a>
                </li>
            {/foreach}
        </ul>

        <h4>Categories</h4>
        <ul>
            {foreach from="$categories" item="category"}
                <li>
                    <a href="{$www_server}/categories/{$category->category_id}/">{$category->name}</a>
                </li>
            {/foreach}
        </ul>
        
        <h4>{$area_names|capitalize}</h4>
        <ul>
            {foreach from="$constituencies" item="constituency"}
                <li>
                    <a href="{$www_server}/{$area_names}/{$constituency->url_id}/">{$constituency->name}</a>
                </li>
            {/foreach}
        </ul>
    </div>
    
{include file="footer.tpl"}
