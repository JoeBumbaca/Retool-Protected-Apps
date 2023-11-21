<App>
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <KeyValueMap
      id="keyValue1"
      data={'{\n  "a": 1,\n  "b": 2,\n  "c": 3\n}'}
      rows={["a", "b", "c"]}
      rowVisibility={{ ordered: [{ a: true }, { b: true }, { c: true }] }}
    />
    <Image
      id="image1"
      horizontalAlign="center"
      src="https://placekitten.com/400/300"
    />
    <Modal id="modal1" buttonText="Open Modal" />
  </Frame>
</App>
