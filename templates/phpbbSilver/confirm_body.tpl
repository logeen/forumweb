<!--
article czy section?

przyciski sa zle.  najchetniej widzialbym je w jednej linii, ale po obu stronach.

-Kwpolska
-->
<p>
<a href="{U_INDEX}" class="nav">{L_INDEX}</a>
</p>

<article>
    <header>{MESSAGE_TITLE}</header>
    <form action="{S_CONFIRM_ACTION}" method="post">
        <section>
            {MESSAGE_TEXT} {S_HIDDEN_FIELDS}
        </section>
        <footer>
            <input type="submit" name="confirm" value="{L_YES}" class="mainoption left">
            <input type="submit" name="cancel" value="{L_NO}" class="liteoption right">
        </footer>
    </form>
</article>
