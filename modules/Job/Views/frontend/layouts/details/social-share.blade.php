<!-- Other Options -->
<div class="other-options">
    <div class="social-share">
        <h5>Bookmark or Share</h5>
        <a href="" target="_blank" class="google"><i class="fas fa-envelope"></i> </a>
        <a href="https://www.facebook.com/sharer/sharer.php?u={{ $row->getDetailUrl() }}&amp;title={{ $translation->title }}" target="_blank" class="facebook"><i class="fab fa-facebook-f"></i> </a>
        <a href="https://twitter.com/share?url={{ $row->getDetailUrl() }}&amp;title={{ $translation->title }}" target="_blank" class="twitter"><i class="fab fa-twitter"></i></a>
        <a href="" target="_blank" class="google"><i class="fab fa-linkedin-in"></i> </a>
        <a href="http://pinterest.com/pin/create/button/?url={{ $row->getDetailUrl() }}&description={{ $translation->title }}" target="_blank" class="google"><i class="fab fa-pinterest"></i> </a>
        <a href="" target="_blank" class="google"><i class="fab fa-whatsapp"></i> </a>
    </div>
</div>
