<Frame
  id="$header"
  isHiddenOnDesktop={false}
  isHiddenOnMobile={false}
  sticky={false}
  type="header"
>
  <HTML
    id="html1"
    css={include("./lib/html1.css", "string")}
    html={
      '<div class="e5_2276"><div class="e5_2566"><div class="e5_2277"><div class="ei5_2277_1095_5078"><div class="ei5_2277_1095_5079"></div><div class="ei5_2277_1095_5080"></div><div class="ei5_2277_1095_5081"></div><div class="ei5_2277_1095_5082"></div></div></div><span class="e5_2278">Fulfillment</span></div><div class="e5_2565"><div class="e5_2563"><div class="ei5_2563_669_112"></div></div></div></div>'
    }
  />
  <Avatar
    id="avatar1"
    fallback="{{ current_user.fullName }}"
    imageSize={32}
    label="{{ current_user.fullName }}"
    labelCaption="{{ current_user.email }}"
    src="{{ current_user.profilePhotoUrl }}"
    style={{ ordered: [{ background: "rgba(255, 0, 0, 1)" }] }}
  />
</Frame>
