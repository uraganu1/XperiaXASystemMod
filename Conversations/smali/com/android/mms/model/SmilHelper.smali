.class public Lcom/android/mms/model/SmilHelper;
.super Ljava/lang/Object;
.source "SmilHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/model/SmilHelper$1;
    }
.end annotation


# static fields
.field private static final XML_PATTERN:Ljava/util/regex/Pattern;

.field private static final XML_REPLACEMENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-string/jumbo v0, "&(?!amp;|lt;|gt;|quot;|apos;)|<|>|\"|\'"

    .line 75
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/SmilHelper;->XML_PATTERN:Ljava/util/regex/Pattern;

    .line 78
    new-instance v0, Lcom/android/mms/model/SmilHelper$1;

    invoke-direct {v0}, Lcom/android/mms/model/SmilHelper$1;-><init>()V

    sput-object v0, Lcom/android/mms/model/SmilHelper;->XML_REPLACEMENTS:Ljava/util/Map;

    .line 69
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V
    .locals 2
    .param p0, "target"    # Lorg/w3c/dom/events/EventTarget;
    .param p1, "media"    # Lcom/android/mms/model/MediaModel;

    .prologue
    const/4 v1, 0x0

    .line 476
    const-string/jumbo v0, "SmilMediaStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 477
    const-string/jumbo v0, "SmilMediaEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 478
    const-string/jumbo v0, "SmilMediaPause"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 479
    const-string/jumbo v0, "SmilMediaSeek"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 473
    return-void
.end method

.method public static addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;
    .locals 2
    .param p0, "document"    # Lorg/w3c/dom/smil/SMILDocument;

    .prologue
    .line 207
    const-string/jumbo v1, "par"

    invoke-interface {p0, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILParElement;

    .line 209
    .local v0, "par":Lorg/w3c/dom/smil/SMILParElement;
    const/high16 v1, 0x41000000    # 8.0f

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 210
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 211
    return-object v0
.end method

.method static addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V
    .locals 2
    .param p0, "target"    # Lorg/w3c/dom/events/EventTarget;
    .param p1, "slide"    # Lcom/android/mms/model/SlideModel;

    .prologue
    const/4 v1, 0x0

    .line 486
    const-string/jumbo v0, "SmilSlideStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 487
    const-string/jumbo v0, "SmilSlideEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 483
    return-void
.end method

.method private static adjustTextRegions(Lcom/android/mms/model/SlideshowModel;)V
    .locals 10
    .param p0, "model"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    const/4 v2, 0x0

    .line 135
    if-nez p0, :cond_0

    .line 136
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v6

    .line 139
    .local v6, "layouts":Lcom/android/mms/model/LayoutModel;
    const/4 v0, 0x0

    .line 141
    .local v0, "onlyTextRegion":Lcom/android/mms/model/RegionModel;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v0    # "onlyTextRegion":Lcom/android/mms/model/RegionModel;
    .local v8, "slideModel$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/model/SlideModel;

    .line 142
    .local v7, "slideModel":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    if-nez v0, :cond_2

    .line 146
    new-instance v0, Lcom/android/mms/model/RegionModel;

    const-string/jumbo v1, "Only_Text"

    invoke-virtual {v6}, Lcom/android/mms/model/LayoutModel;->getRootLayout()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    .line 147
    invoke-virtual {v6}, Lcom/android/mms/model/LayoutModel;->getRootLayout()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v5

    move v3, v2

    .line 146
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    .line 149
    :cond_2
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v9

    .line 150
    .local v9, "tModel":Lcom/android/mms/model/TextModel;
    invoke-virtual {v9, v0}, Lcom/android/mms/model/TextModel;->setRegion(Lcom/android/mms/model/RegionModel;)V

    goto :goto_0

    .line 134
    .end local v7    # "slideModel":Lcom/android/mms/model/SlideModel;
    .end local v9    # "tModel":Lcom/android/mms/model/TextModel;
    :cond_3
    return-void
.end method

.method public static createImageElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;Z)Lorg/w3c/dom/smil/SMILMediaElement;
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "document"    # Lorg/w3c/dom/smil/SMILDocument;
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "isSticker"    # Z

    .prologue
    .line 216
    invoke-static {p0, p1, p2}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v0

    .line 217
    .local v0, "mediaElement":Lorg/w3c/dom/smil/SMILMediaElement;
    if-eqz p3, :cond_0

    .line 218
    const-string/jumbo v1, "somc_is_sticker"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILMediaElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    return-object v0
.end method

.method public static createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "document"    # Lorg/w3c/dom/smil/SMILDocument;
    .param p2, "src"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-interface {p1, p0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 226
    .local v0, "mediaElement":Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-static {p2}, Lcom/android/mms/model/SmilHelper;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILMediaElement;->setSrc(Ljava/lang/String;)V

    .line 227
    return-object v0
.end method

.method private static createSmilDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 32
    .param p0, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 324
    new-instance v7, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v7}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    .line 327
    .local v7, "document":Lorg/w3c/dom/smil/SMILDocument;
    const-string/jumbo v30, "smil"

    move-object/from16 v0, v30

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v24

    check-cast v24, Lorg/w3c/dom/smil/SMILElement;

    .line 328
    .local v24, "smilElement":Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 331
    const-string/jumbo v30, "head"

    move-object/from16 v0, v30

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/smil/SMILElement;

    .line 332
    .local v9, "headElement":Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 336
    const-string/jumbo v30, "layout"

    move-object/from16 v0, v30

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 335
    check-cast v12, Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 337
    .local v12, "layoutElement":Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface {v9, v12}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 341
    const-string/jumbo v30, "root-layout"

    move-object/from16 v0, v30

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/smil/SMILRootLayoutElement;

    .line 342
    .local v20, "rootLayoutElement":Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v13

    .line 343
    .local v13, "layouts":Lcom/android/mms/model/LayoutModel;
    invoke-virtual {v13}, Lcom/android/mms/model/LayoutModel;->getLayoutWidth()I

    move-result v30

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 344
    invoke-virtual {v13}, Lcom/android/mms/model/LayoutModel;->getLayoutHeight()I

    move-result v30

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 345
    invoke-virtual {v13}, Lcom/android/mms/model/LayoutModel;->getBackgroundColor()Ljava/lang/String;

    move-result-object v5

    .line 346
    .local v5, "bgColor":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_0

    .line 347
    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setBackgroundColor(Ljava/lang/String;)V

    .line 349
    :cond_0
    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 352
    invoke-virtual {v13}, Lcom/android/mms/model/LayoutModel;->getRegions()Ljava/util/ArrayList;

    move-result-object v19

    .line 353
    .local v19, "regions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v26, "smilRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/mms/model/RegionModel;

    .line 355
    .local v17, "r":Lcom/android/mms/model/RegionModel;
    const-string/jumbo v30, "region"

    move-object/from16 v0, v30

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v25

    check-cast v25, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 356
    .local v25, "smilRegion":Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setId(Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v30

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setLeft(I)V

    .line 358
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v30

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setTop(I)V

    .line 359
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v30

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setWidth(I)V

    .line 360
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v30

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setHeight(I)V

    .line 361
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setFit(Ljava/lang/String;)V

    .line 362
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 366
    .end local v17    # "r":Lcom/android/mms/model/RegionModel;
    .end local v25    # "smilRegion":Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_1
    const-string/jumbo v30, "body"

    move-object/from16 v0, v30

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/smil/SMILElement;

    .line 367
    .local v6, "bodyElement":Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 369
    const/16 v29, 0x0

    .line 370
    .local v29, "txtRegionPresentInLayout":Z
    const/4 v11, 0x0

    .line 371
    .local v11, "imgRegionPresentInLayout":Z
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .end local v11    # "imgRegionPresentInLayout":Z
    .end local v29    # "txtRegionPresentInLayout":Z
    .local v22, "slide$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_b

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/mms/model/SlideModel;

    .line 373
    .local v21, "slide":Lcom/android/mms/model/SlideModel;
    invoke-static {v7}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v16

    .line 374
    .local v16, "par":Lorg/w3c/dom/smil/SMILParElement;
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x447a0000    # 1000.0f

    div-float v30, v30, v31

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    move-object/from16 v30, v16

    .line 376
    check-cast v30, Lorg/w3c/dom/events/EventTarget;

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 379
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "media$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/mms/model/MediaModel;

    .line 381
    .local v14, "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v27

    .line 382
    .local v27, "src":Ljava/lang/String;
    instance-of v0, v14, Lcom/android/mms/model/TextModel;

    move/from16 v30, v0

    if-eqz v30, :cond_6

    move-object/from16 v28, v14

    .line 383
    check-cast v28, Lcom/android/mms/model/TextModel;

    .line 384
    .local v28, "text":Lcom/android/mms/model/TextModel;
    invoke-virtual/range {v28 .. v28}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_3

    .line 390
    const-string/jumbo v30, "text"

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v23

    .local v23, "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v30, v23

    .line 391
    check-cast v30, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    .line 394
    const-string/jumbo v31, "Text"

    .line 391
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move-object/from16 v2, v31

    move/from16 v3, v29

    invoke-static {v0, v1, v12, v2, v3}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v29

    .line 425
    .end local v28    # "text":Lcom/android/mms/model/TextModel;
    :goto_2
    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->getBegin()I

    move-result v4

    .line 426
    .local v4, "begin":I
    if-eqz v4, :cond_4

    .line 427
    const-string/jumbo v30, "begin"

    div-int/lit16 v0, v4, 0x3e8

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILMediaElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_4
    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v8

    .line 430
    .local v8, "duration":I
    if-eqz v8, :cond_5

    .line 431
    int-to-float v0, v8

    move/from16 v30, v0

    const/high16 v31, 0x447a0000    # 1000.0f

    div-float v30, v30, v31

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILMediaElement;->setDur(F)V

    .line 433
    :cond_5
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 435
    check-cast v23, Lorg/w3c/dom/events/EventTarget;

    .end local v23    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v23

    invoke-static {v0, v14}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    goto :goto_1

    .line 396
    .end local v4    # "begin":I
    .end local v8    # "duration":I
    :cond_6
    instance-of v0, v14, Lcom/android/mms/model/ImageModel;

    move/from16 v30, v0

    if-eqz v30, :cond_7

    move-object v10, v14

    .line 397
    check-cast v10, Lcom/android/mms/model/ImageModel;

    .line 399
    .local v10, "im":Lcom/android/mms/model/ImageModel;
    const-string/jumbo v30, "img"

    .line 400
    invoke-virtual {v10}, Lcom/android/mms/model/ImageModel;->isSticker()Z

    move-result v31

    .line 399
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    move/from16 v2, v31

    invoke-static {v0, v7, v1, v2}, Lcom/android/mms/model/SmilHelper;->createImageElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;Z)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v23

    .restart local v23    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v30, v23

    .line 401
    check-cast v30, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    .line 404
    const-string/jumbo v31, "Image"

    .line 401
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move-object/from16 v2, v31

    invoke-static {v0, v1, v12, v2, v11}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v11

    .local v11, "imgRegionPresentInLayout":Z
    goto :goto_2

    .line 407
    .end local v10    # "im":Lcom/android/mms/model/ImageModel;
    .end local v11    # "imgRegionPresentInLayout":Z
    .end local v23    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_7
    instance-of v0, v14, Lcom/android/mms/model/VideoModel;

    move/from16 v30, v0

    if-eqz v30, :cond_8

    .line 408
    const-string/jumbo v30, "video"

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v23

    .restart local v23    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v30, v23

    .line 409
    check-cast v30, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    .line 412
    const-string/jumbo v31, "Image"

    .line 409
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move-object/from16 v2, v31

    invoke-static {v0, v1, v12, v2, v11}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v11

    .restart local v11    # "imgRegionPresentInLayout":Z
    goto/16 :goto_2

    .line 414
    .end local v11    # "imgRegionPresentInLayout":Z
    .end local v23    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_8
    instance-of v0, v14, Lcom/android/mms/model/AudioModel;

    move/from16 v30, v0

    if-eqz v30, :cond_9

    .line 415
    const-string/jumbo v30, "audio"

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v23

    .restart local v23    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    goto/16 :goto_2

    .line 416
    .end local v23    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_9
    instance-of v0, v14, Lcom/sonyericsson/conversations/model/AttachmentModel;

    move/from16 v30, v0

    if-eqz v30, :cond_a

    .line 417
    const-string/jumbo v30, "ref"

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v23

    .restart local v23    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    goto/16 :goto_2

    .line 420
    .end local v23    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_a
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Unsupport media: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 445
    .end local v14    # "media":Lcom/android/mms/model/MediaModel;
    .end local v15    # "media$iterator":Ljava/util/Iterator;
    .end local v16    # "par":Lorg/w3c/dom/smil/SMILParElement;
    .end local v21    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v27    # "src":Ljava/lang/String;
    :cond_b
    return-object v7
.end method

.method private static createSmilDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 20
    .param p0, "pb"    # Lcom/google/android/mms/pdu/PduBody;

    .prologue
    .line 245
    new-instance v4, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v4}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    .line 249
    .local v4, "document":Lorg/w3c/dom/smil/SMILDocument;
    const-string/jumbo v18, "smil"

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/smil/SMILElement;

    .line 250
    .local v15, "smil":Lorg/w3c/dom/smil/SMILElement;
    const-string/jumbo v18, "xmlns"

    const-string/jumbo v19, "http://www.w3.org/2001/SMIL20/Language"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-interface {v4, v15}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 254
    const-string/jumbo v18, "head"

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/smil/SMILElement;

    .line 255
    .local v7, "head":Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v15, v7}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 257
    const-string/jumbo v18, "layout"

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 258
    .local v10, "layout":Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface {v7, v10}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 261
    const-string/jumbo v18, "body"

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILElement;

    .line 262
    .local v2, "body":Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v15, v2}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 263
    invoke-static {v4}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v12

    .line 266
    .local v12, "par":Lorg/w3c/dom/smil/SMILParElement;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v14

    .line 267
    .local v14, "partsNum":I
    if-nez v14, :cond_0

    .line 268
    return-object v4

    .line 271
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v14, :cond_a

    .line 272
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v13

    .line 273
    .local v13, "part":Lcom/google/android/mms/pdu/PduPart;
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v13}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v18

    sget-object v19, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 275
    .local v3, "contentType":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string/jumbo v18, "text/plain"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 276
    const-string/jumbo v18, "application/vnd.wap.xhtml+xml"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    .line 278
    :goto_1
    if-eqz v9, :cond_5

    .line 279
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v18

    if-nez v18, :cond_4

    .line 271
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 275
    :cond_2
    const/4 v9, 0x1

    .local v9, "isText":Z
    goto :goto_1

    .end local v9    # "isText":Z
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "isText":Z
    goto :goto_1

    .line 282
    .end local v9    # "isText":Z
    :cond_4
    new-instance v17, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual {v13}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v18

    invoke-virtual {v13}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 284
    .local v17, "tmpData":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_1

    .line 292
    .end local v17    # "tmpData":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_5
    :try_start_0
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 300
    .local v11, "location":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 301
    const-string/jumbo v16, "text"

    .line 312
    .local v16, "tag":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v16

    invoke-static {v0, v4, v11}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v6

    .line 313
    .local v6, "element":Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-static {v4}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v12

    .line 314
    invoke-interface {v12, v6}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    .line 293
    .end local v6    # "element":Lorg/w3c/dom/smil/SMILMediaElement;
    .end local v11    # "location":Ljava/lang/String;
    .end local v16    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 294
    .local v5, "e":Ljava/lang/NullPointerException;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Found a part with no name, filename, content id or content location in the database; ignoring the part."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 295
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v19

    .line 294
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_2

    .line 302
    .end local v5    # "e":Ljava/lang/NullPointerException;
    .restart local v11    # "location":Ljava/lang/String;
    :cond_6
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 303
    const-string/jumbo v16, "img"

    .restart local v16    # "tag":Ljava/lang/String;
    goto :goto_3

    .line 304
    .end local v16    # "tag":Ljava/lang/String;
    :cond_7
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 305
    const-string/jumbo v16, "video"

    .restart local v16    # "tag":Ljava/lang/String;
    goto :goto_3

    .line 306
    .end local v16    # "tag":Ljava/lang/String;
    :cond_8
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 307
    const-string/jumbo v16, "audio"

    .restart local v16    # "tag":Ljava/lang/String;
    goto :goto_3

    .line 310
    .end local v16    # "tag":Ljava/lang/String;
    :cond_9
    const-string/jumbo v16, "ref"

    .restart local v16    # "tag":Ljava/lang/String;
    goto :goto_3

    .line 316
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v11    # "location":Ljava/lang/String;
    .end local v13    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v16    # "tag":Ljava/lang/String;
    :cond_a
    return-object v4
.end method

.method private static escapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 231
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 232
    .local v1, "sb":Ljava/lang/StringBuffer;
    sget-object v2, Lcom/android/mms/model/SmilHelper;->XML_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 233
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    sget-object v2, Lcom/android/mms/model/SmilHelper;->XML_REPLACEMENTS:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 237
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static findRegionElementById(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;
    .locals 3
    .param p1, "rId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/smil/SMILRegionElement;"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "smilRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "smilRegion$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 451
    .local v0, "smilRegion":Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    return-object v0

    .line 455
    .end local v0    # "smilRegion":Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private static findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;
    .locals 6
    .param p0, "body"    # Lcom/google/android/mms/pdu/PduBody;

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v2

    .line 162
    .local v2, "partNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 163
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 164
    .local v1, "part":Lcom/google/android/mms/pdu/PduPart;
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 165
    const-string/jumbo v4, "application/smil"

    .line 164
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    return-object v1

    .line 162
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    .end local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1
    .param p0, "model"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 124
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->adjustTextRegions(Lcom/android/mms/model/SlideshowModel;)V

    .line 126
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->createSmilDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    return-object v0
.end method

.method public static getDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 2
    .param p0, "pb"    # Lcom/google/android/mms/pdu/PduBody;

    .prologue
    .line 103
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 104
    .local v1, "smilPart":Lcom/google/android/mms/pdu/PduPart;
    const/4 v0, 0x0

    .line 107
    .local v0, "document":Lorg/w3c/dom/smil/SMILDocument;
    if-eqz v1, :cond_0

    .line 108
    invoke-static {v1}, Lcom/android/mms/model/SmilHelper;->getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 111
    .end local v0    # "document":Lorg/w3c/dom/smil/SMILDocument;
    :cond_0
    if-nez v0, :cond_1

    .line 113
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->createSmilDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 116
    :cond_1
    return-object v0
.end method

.method private static getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 8
    .param p0, "smilPart"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    const/4 v7, 0x0

    .line 185
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v1

    .line 186
    .local v1, "data":[B
    if-eqz v1, :cond_0

    .line 192
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 193
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v6, Lcom/android/mms/dom/smil/parser/SmilXmlParser;

    invoke-direct {v6}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;-><init>()V

    invoke-virtual {v6, v0}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v2

    .line 194
    .local v2, "document":Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v2}, Lcom/android/mms/model/SmilHelper;->validate(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 200
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "data":[B
    .end local v2    # "document":Lorg/w3c/dom/smil/SMILDocument;
    :catch_0
    move-exception v3

    .line 201
    .local v3, "e":Lcom/google/android/mms/MmsException;
    const-string/jumbo v6, "Failed to parse SMIL document."

    invoke-static {v6, v3}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    .end local v3    # "e":Lcom/google/android/mms/MmsException;
    :cond_0
    :goto_0
    return-object v7

    .line 198
    :catch_1
    move-exception v5

    .line 199
    .local v5, "e":Lorg/xml/sax/SAXException;
    const-string/jumbo v6, "Failed to parse SMIL document."

    invoke-static {v6, v5}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 196
    .end local v5    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v4

    .line 197
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v6, "Failed to parse SMIL document."

    invoke-static {v6, v4}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "srme"    # Lorg/w3c/dom/smil/SMILRegionMediaElement;
    .param p2, "smilLayout"    # Lorg/w3c/dom/smil/SMILLayoutElement;
    .param p3, "regionId"    # Ljava/lang/String;
    .param p4, "regionPresentInLayout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/SMILRegionMediaElement;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;",
            "Lorg/w3c/dom/smil/SMILLayoutElement;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 463
    .local p1, "smilRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-static {p1, p3}, Lcom/android/mms/model/SmilHelper;->findRegionElementById(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v0

    .line 464
    .local v0, "smilRegion":Lorg/w3c/dom/smil/SMILRegionElement;
    if-nez p4, :cond_0

    if-eqz v0, :cond_0

    .line 465
    invoke-interface {p0, v0}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->setRegion(Lorg/w3c/dom/smil/SMILRegionElement;)V

    .line 466
    invoke-interface {p2, v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 467
    const/4 v1, 0x1

    return v1

    .line 469
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static validate(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 0
    .param p0, "in"    # Lorg/w3c/dom/smil/SMILDocument;

    .prologue
    .line 175
    return-object p0
.end method
