.class public Lcom/android/mms/model/SlideshowModel;
.super Lcom/android/mms/model/Model;
.source "SlideshowModel.java"

# interfaces
.implements Ljava/util/List;
.implements Lcom/android/mms/model/IModelChangedObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/model/SlideshowModel$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mms/model/Model;",
        "Ljava/util/List",
        "<",
        "Lcom/android/mms/model/SlideModel;",
        ">;",
        "Lcom/android/mms/model/IModelChangedObserver;"
    }
.end annotation


# static fields
.field private static final regionElementComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentMessageSize:I

.field private mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

.field private final mLayout:Lcom/android/mms/model/LayoutModel;

.field private mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

.field private final mSizeRestrictionActive:Z

.field private mSlideNodeNum:I

.field private final mSlides:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/android/mms/model/SlideshowModel$1;

    invoke-direct {v0}, Lcom/android/mms/model/SlideshowModel$1;-><init>()V

    sput-object v0, Lcom/android/mms/model/SlideshowModel;->regionElementComparator:Ljava/util/Comparator;

    .line 70
    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 85
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/mms/model/SlideshowModel;-><init>(Landroid/content/ContentResolver;Z)V

    .line 84
    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "sizeRestrictionActive"    # Z

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlideNodeNum:I

    .line 89
    new-instance v0, Lcom/android/mms/model/LayoutModel;

    invoke-direct {v0}, Lcom/android/mms/model/LayoutModel;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 91
    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mContentResolver:Landroid/content/ContentResolver;

    .line 92
    iput-boolean p2, p0, Lcom/android/mms/model/SlideshowModel;->mSizeRestrictionActive:Z

    .line 88
    return-void
.end method

.method private constructor <init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "layouts"    # Lcom/android/mms/model/LayoutModel;
    .param p3, "documentCache"    # Lorg/w3c/dom/smil/SMILDocument;
    .param p4, "pbCache"    # Lcom/google/android/mms/pdu/PduBody;
    .param p5, "contentResolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/LayoutModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;",
            "Lorg/w3c/dom/smil/SMILDocument;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    .local p2, "slides":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 74
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlideNodeNum:I

    .line 99
    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 100
    iput-object p2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 101
    iput-object p5, p0, Lcom/android/mms/model/SlideshowModel;->mContentResolver:Landroid/content/ContentResolver;

    .line 102
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/model/SlideshowModel;->mSizeRestrictionActive:Z

    .line 104
    iput-object p3, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 105
    iput-object p4, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 106
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "slide$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 107
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 108
    invoke-virtual {v0, p0}, Lcom/android/mms/model/SlideModel;->setParent(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_0

    .line 98
    .end local v0    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method public static createBriefFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {p0, p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    return-object v0
.end method

.method public static createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {p0, p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    return-object v0
.end method

.method public static createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;
    .locals 56
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pb"    # Lcom/google/android/mms/pdu/PduBody;
    .param p2, "isBrief"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static/range {p1 .. p1}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v33

    .line 139
    .local v33, "document":Lorg/w3c/dom/smil/SMILDocument;
    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v47

    .line 140
    .local v47, "sle":Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface/range {v47 .. v47}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v54

    .line 141
    .local v54, "srle":Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-interface/range {v54 .. v54}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v22

    .line 142
    .local v22, "w":I
    invoke-interface/range {v54 .. v54}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v23

    .line 143
    .local v23, "h":I
    if-eqz v22, :cond_0

    if-nez v23, :cond_1

    .line 144
    :cond_0
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v22

    .line 145
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v23

    .line 146
    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 147
    move-object/from16 v0, v54

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 151
    :cond_1
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v44, "regions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v27, "oneMediaRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    invoke-interface/range {v47 .. v47}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRegions()Lorg/w3c/dom/NodeList;

    move-result-object v39

    .line 154
    .local v39, "nlRegions":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v39 .. v39}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v45

    .line 157
    .local v45, "regionsNum":I
    const/16 v42, 0x0

    .line 159
    .local v42, "realWidth":I
    const/16 v41, 0x0

    .line 161
    .local v41, "realHeight":I
    const/16 v55, 0x0

    .line 162
    .local v55, "textTop":I
    const/16 v38, 0x0

    .line 164
    .local v38, "imageTop":I
    const/16 v43, 0x0

    .line 165
    .local v43, "referTop":I
    const/16 v50, 0x1

    .line 166
    .local v50, "smilValid":Z
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v51, "sortedSre":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    const/16 v37, 0x0

    .local v37, "i":I
    :goto_0
    move/from16 v0, v37

    move/from16 v1, v45

    if-ge v0, v1, :cond_2

    .line 170
    move-object/from16 v0, v39

    move/from16 v1, v37

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/smil/SMILRegionElement;

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v37, v37, 0x1

    goto :goto_0

    .line 172
    :cond_2
    sget-object v6, Lcom/android/mms/model/SlideshowModel;->regionElementComparator:Ljava/util/Comparator;

    move-object/from16 v0, v51

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 173
    invoke-interface/range {v51 .. v51}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .local v53, "sre$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 174
    .local v52, "sre":Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-interface/range {v52 .. v52}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v17

    .line 175
    .local v17, "height":I
    invoke-interface/range {v52 .. v52}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v9

    .line 177
    .local v9, "top":I
    move/from16 v0, v43

    if-le v0, v9, :cond_6

    .line 178
    const/16 v50, 0x0

    .line 184
    .end local v9    # "top":I
    .end local v17    # "height":I
    .end local v52    # "sre":Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_3
    const/16 v46, 0x0

    .line 185
    .local v46, "regonIndex":I
    invoke-interface/range {v51 .. v51}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v53

    :cond_4
    :goto_2
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 186
    .restart local v52    # "sre":Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-interface/range {v52 .. v52}, Lorg/w3c/dom/smil/SMILRegionElement;->getWidth()I

    move-result v10

    .line 187
    .local v10, "width":I
    invoke-interface/range {v52 .. v52}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v17

    .line 188
    .restart local v17    # "height":I
    invoke-interface/range {v52 .. v52}, Lorg/w3c/dom/smil/SMILRegionElement;->getLeft()I

    move-result v8

    .line 189
    .local v8, "left":I
    invoke-interface/range {v52 .. v52}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v9

    .line 191
    .restart local v9    # "top":I
    if-nez v50, :cond_7

    .line 193
    new-instance v5, Lcom/android/mms/model/RegionModel;

    invoke-interface/range {v52 .. v52}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v52 .. v52}, Lorg/w3c/dom/smil/SMILRegionElement;->getFit()Ljava/lang/String;

    move-result-object v7

    .line 194
    invoke-interface/range {v52 .. v52}, Lorg/w3c/dom/smil/SMILRegionElement;->getBackgroundColor()Ljava/lang/String;

    move-result-object v12

    .line 193
    const/16 v11, 0x64

    invoke-direct/range {v5 .. v12}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 199
    .local v5, "oneMediaRegion":Lcom/android/mms/model/RegionModel;
    :goto_3
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    if-nez v50, :cond_5

    .line 203
    mul-int/lit8 v9, v46, 0x64

    .line 204
    const/16 v17, 0x64

    .line 205
    add-int/lit8 v46, v46, 0x1

    .line 207
    :cond_5
    new-instance v11, Lcom/android/mms/model/RegionModel;

    invoke-interface/range {v52 .. v52}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {v52 .. v52}, Lorg/w3c/dom/smil/SMILRegionElement;->getFit()Ljava/lang/String;

    move-result-object v13

    .line 208
    invoke-interface/range {v52 .. v52}, Lorg/w3c/dom/smil/SMILRegionElement;->getBackgroundColor()Ljava/lang/String;

    move-result-object v18

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    .line 207
    invoke-direct/range {v11 .. v18}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 210
    .local v11, "r":Lcom/android/mms/model/RegionModel;
    add-int v6, v8, v10

    move/from16 v0, v42

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v42

    .line 212
    add-int v6, v9, v17

    move/from16 v0, v41

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v41

    .line 213
    move-object/from16 v0, v44

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-interface/range {v52 .. v52}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Image"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 216
    move/from16 v38, v9

    goto :goto_2

    .line 181
    .end local v5    # "oneMediaRegion":Lcom/android/mms/model/RegionModel;
    .end local v8    # "left":I
    .end local v10    # "width":I
    .end local v11    # "r":Lcom/android/mms/model/RegionModel;
    .end local v46    # "regonIndex":I
    :cond_6
    add-int v43, v9, v17

    goto/16 :goto_1

    .line 196
    .restart local v8    # "left":I
    .restart local v10    # "width":I
    .restart local v46    # "regonIndex":I
    :cond_7
    new-instance v5, Lcom/android/mms/model/RegionModel;

    invoke-interface/range {v52 .. v52}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v52 .. v52}, Lorg/w3c/dom/smil/SMILRegionElement;->getFit()Ljava/lang/String;

    move-result-object v7

    .line 197
    invoke-interface/range {v52 .. v52}, Lorg/w3c/dom/smil/SMILRegionElement;->getBackgroundColor()Ljava/lang/String;

    move-result-object v12

    move/from16 v11, v17

    .line 196
    invoke-direct/range {v5 .. v12}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .restart local v5    # "oneMediaRegion":Lcom/android/mms/model/RegionModel;
    goto :goto_3

    .line 217
    .restart local v11    # "r":Lcom/android/mms/model/RegionModel;
    :cond_8
    invoke-interface/range {v52 .. v52}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Text"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 218
    move/from16 v55, v9

    goto/16 :goto_2

    .line 223
    .end local v5    # "oneMediaRegion":Lcom/android/mms/model/RegionModel;
    .end local v8    # "left":I
    .end local v9    # "top":I
    .end local v10    # "width":I
    .end local v11    # "r":Lcom/android/mms/model/RegionModel;
    .end local v17    # "height":I
    .end local v52    # "sre":Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_9
    if-lez v42, :cond_a

    .line 224
    move/from16 v0, v22

    move/from16 v1, v42

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 225
    :cond_a
    if-lez v41, :cond_b

    .line 226
    move/from16 v0, v23

    move/from16 v1, v41

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 229
    :cond_b
    if-nez v50, :cond_c

    const/16 v6, 0x64

    move/from16 v0, v23

    if-ge v0, v6, :cond_c

    .line 230
    const/16 v23, 0x64

    .line 233
    :cond_c
    new-instance v18, Lcom/android/mms/model/RegionModel;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v18 .. v23}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    .line 234
    .local v18, "rootLayout":Lcom/android/mms/model/RegionModel;
    new-instance v28, Lcom/android/mms/model/LayoutModel;

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/android/mms/model/LayoutModel;-><init>(Lcom/android/mms/model/RegionModel;Ljava/util/ArrayList;)V

    .line 236
    .local v28, "layouts":Lcom/android/mms/model/LayoutModel;
    move/from16 v0, v55

    move/from16 v1, v38

    if-ge v0, v1, :cond_d

    .line 237
    const/4 v6, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Lcom/android/mms/model/LayoutModel;->changeTo(I)V

    .line 242
    :goto_4
    invoke-virtual/range {v28 .. v28}, Lcom/android/mms/model/LayoutModel;->getRegions()Ljava/util/ArrayList;

    move-result-object v29

    .line 245
    .local v29, "originalRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v36

    .line 246
    .local v36, "docBody":Lorg/w3c/dom/smil/SMILElement;
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v48

    .line 247
    .local v48, "slideNodes":Lorg/w3c/dom/NodeList;
    if-eqz p2, :cond_f

    invoke-interface/range {v48 .. v48}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_e

    const/16 v49, 0x1

    .line 248
    .local v49, "slidesNum":I
    :goto_5
    new-instance v32, Ljava/util/ArrayList;

    move-object/from16 v0, v32

    move/from16 v1, v49

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 250
    .local v32, "slides":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    const/16 v37, 0x0

    :goto_6
    move/from16 v0, v37

    move/from16 v1, v49

    if-ge v0, v1, :cond_12

    .line 253
    move-object/from16 v0, v48

    move/from16 v1, v37

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v40

    .line 254
    .local v40, "node":Lorg/w3c/dom/Node;
    move-object/from16 v0, v40

    instance-of v6, v0, Lorg/w3c/dom/smil/SMILParElement;

    if-eqz v6, :cond_10

    move-object/from16 v30, v40

    .line 256
    check-cast v30, Lorg/w3c/dom/smil/SMILParElement;

    move-object/from16 v24, p0

    move-object/from16 v25, p1

    move/from16 v26, p2

    .line 255
    invoke-static/range {v24 .. v30}, Lcom/android/mms/model/SlideshowModel;->extractMultipleMediaElements(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;ZLjava/util/ArrayList;Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILParElement;)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v40    # "node":Lorg/w3c/dom/Node;
    :goto_7
    add-int/lit8 v37, v37, 0x1

    goto :goto_6

    .line 239
    .end local v29    # "originalRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    .end local v32    # "slides":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    .end local v36    # "docBody":Lorg/w3c/dom/smil/SMILElement;
    .end local v48    # "slideNodes":Lorg/w3c/dom/NodeList;
    .end local v49    # "slidesNum":I
    :cond_d
    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Lcom/android/mms/model/LayoutModel;->changeTo(I)V

    goto :goto_4

    .line 247
    .restart local v29    # "originalRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    .restart local v36    # "docBody":Lorg/w3c/dom/smil/SMILElement;
    .restart local v48    # "slideNodes":Lorg/w3c/dom/NodeList;
    :cond_e
    const/16 v49, 0x0

    .restart local v49    # "slidesNum":I
    goto :goto_5

    .end local v49    # "slidesNum":I
    :cond_f
    invoke-interface/range {v48 .. v48}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v49

    .restart local v49    # "slidesNum":I
    goto :goto_5

    .line 257
    .restart local v32    # "slides":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    .restart local v40    # "node":Lorg/w3c/dom/Node;
    :cond_10
    move-object/from16 v0, v40

    instance-of v6, v0, Lorg/w3c/dom/smil/SMILMediaElement;

    if-eqz v6, :cond_11

    .line 258
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/mms/model/LayoutModel;->changeRegionsTo(Ljava/util/ArrayList;)V

    .line 260
    check-cast v40, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 259
    .end local v40    # "node":Lorg/w3c/dom/Node;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v28

    move-object/from16 v4, v40

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/model/SlideshowModel;->extractSingleMediaElement(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;ZLcom/android/mms/model/LayoutModel;Lorg/w3c/dom/smil/SMILMediaElement;)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-virtual/range {v28 .. v29}, Lcom/android/mms/model/LayoutModel;->changeRegionsTo(Ljava/util/ArrayList;)V

    goto :goto_7

    .line 263
    .restart local v40    # "node":Lorg/w3c/dom/Node;
    :cond_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Item in SMIL document not supported: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_7

    .line 267
    .end local v40    # "node":Lorg/w3c/dom/Node;
    :cond_12
    new-instance v30, Lcom/android/mms/model/SlideshowModel;

    .line 268
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    move-object/from16 v31, v28

    move-object/from16 v34, p1

    .line 267
    invoke-direct/range {v30 .. v35}, Lcom/android/mms/model/SlideshowModel;-><init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/ContentResolver;)V

    .line 269
    .local v30, "slideshow":Lcom/android/mms/model/SlideshowModel;
    invoke-interface/range {v48 .. v48}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    move-object/from16 v0, v30

    invoke-direct {v0, v6}, Lcom/android/mms/model/SlideshowModel;->setSlideNodeNum(I)V

    .line 270
    move-object/from16 v0, v30

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 271
    return-object v30
.end method

.method public static createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    new-instance v0, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideshowModel;-><init>(Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public static createNew(Landroid/content/Context;Z)Lcom/android/mms/model/SlideshowModel;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeRestrictionActive"    # Z

    .prologue
    .line 113
    new-instance v0, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/mms/model/SlideshowModel;-><init>(Landroid/content/ContentResolver;Z)V

    return-object v0
.end method

.method private static extractMultipleMediaElements(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;ZLjava/util/ArrayList;Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILParElement;)Lcom/android/mms/model/SlideModel;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pb"    # Lcom/google/android/mms/pdu/PduBody;
    .param p2, "isBrief"    # Z
    .param p4, "layouts"    # Lcom/android/mms/model/LayoutModel;
    .param p6, "par"    # Lorg/w3c/dom/smil/SMILParElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/RegionModel;",
            ">;",
            "Lcom/android/mms/model/LayoutModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/RegionModel;",
            ">;",
            "Lorg/w3c/dom/smil/SMILParElement;",
            ")",
            "Lcom/android/mms/model/SlideModel;"
        }
    .end annotation

    .prologue
    .line 279
    .local p3, "oneMediaRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    .local p5, "originalRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    invoke-interface/range {p6 .. p6}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 280
    .local v9, "mediaNodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    .line 281
    .local v10, "mediaNum":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    .local v11, "mediaSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    const/4 v12, 0x0

    .line 285
    .local v12, "restore":Z
    const/4 v15, 0x1

    if-ne v10, v15, :cond_0

    .line 286
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/mms/model/LayoutModel;->changeRegionsTo(Ljava/util/ArrayList;)V

    .line 287
    const/4 v12, 0x1

    .line 289
    :cond_0
    const/4 v8, 0x0

    .line 290
    .local v8, "media":Lcom/android/mms/model/MediaModel;
    const/4 v7, 0x0

    .end local v8    # "media":Lcom/android/mms/model/MediaModel;
    .local v7, "j":I
    :goto_0
    if-ge v7, v10, :cond_1

    .line 292
    :try_start_0
    invoke-interface {v9, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 293
    .local v14, "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static {v0, v14, v1, v2, v3}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v8

    .line 295
    .local v8, "media":Lcom/android/mms/model/MediaModel;
    check-cast v14, Lorg/w3c/dom/events/EventTarget;

    .end local v14    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-static {v14, v8}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    .line 296
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v8    # "media":Lcom/android/mms/model/MediaModel;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 299
    :catch_0
    move-exception v6

    .line 300
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v15, "Failed to get media model."

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 297
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 298
    .local v5, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v15, "Unsupported SMIL element."

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 304
    .end local v5    # "e":Ljava/lang/ClassCastException;
    :cond_1
    if-eqz v12, :cond_2

    .line 305
    invoke-virtual/range {p4 .. p5}, Lcom/android/mms/model/LayoutModel;->changeRegionsTo(Ljava/util/ArrayList;)V

    .line 308
    :cond_2
    const/4 v4, 0x0

    .line 309
    .local v4, "duration":I
    invoke-static {v8}, Lcom/android/mms/model/SlideshowModel;->hasVcardOrVcalContent(Lcom/android/mms/model/MediaModel;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 310
    new-instance v13, Lcom/android/mms/model/SlideModel;

    invoke-direct {v13, v4, v11}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/List;)V

    .line 319
    .local v13, "slide":Lcom/android/mms/model/SlideModel;
    :goto_2
    invoke-interface/range {p6 .. p6}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v15

    invoke-virtual {v13, v15}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    .line 320
    check-cast p6, Lorg/w3c/dom/events/EventTarget;

    .end local p6    # "par":Lorg/w3c/dom/smil/SMILParElement;
    move-object/from16 v0, p6

    invoke-static {v0, v13}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 321
    return-object v13

    .line 312
    .end local v13    # "slide":Lcom/android/mms/model/SlideModel;
    .restart local p6    # "par":Lorg/w3c/dom/smil/SMILParElement;
    :cond_3
    invoke-interface/range {p6 .. p6}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v15

    const/high16 v16, 0x447a0000    # 1000.0f

    mul-float v15, v15, v16

    float-to-int v4, v15

    .line 313
    if-gtz v4, :cond_4

    .line 314
    new-instance v13, Lcom/android/mms/model/SlideModel;

    const/16 v15, 0x1388

    invoke-direct {v13, v15, v11}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/List;)V

    .restart local v13    # "slide":Lcom/android/mms/model/SlideModel;
    goto :goto_2

    .line 316
    .end local v13    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_4
    new-instance v13, Lcom/android/mms/model/SlideModel;

    invoke-direct {v13, v4, v11}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/List;)V

    .restart local v13    # "slide":Lcom/android/mms/model/SlideModel;
    goto :goto_2
.end method

.method private static extractSingleMediaElement(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;ZLcom/android/mms/model/LayoutModel;Lorg/w3c/dom/smil/SMILMediaElement;)Lcom/android/mms/model/SlideModel;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pb"    # Lcom/google/android/mms/pdu/PduBody;
    .param p2, "isBrief"    # Z
    .param p3, "layouts"    # Lcom/android/mms/model/LayoutModel;
    .param p4, "node"    # Lorg/w3c/dom/smil/SMILMediaElement;

    .prologue
    .line 335
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 337
    .local v3, "mediaSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    :try_start_0
    invoke-static {p0, p4, p3, p1, p2}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v2

    .line 339
    .local v2, "media":Lcom/android/mms/model/MediaModel;
    check-cast p4, Lorg/w3c/dom/events/EventTarget;

    .end local p4    # "node":Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-static {p4, v2}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    .line 340
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local v2    # "media":Lcom/android/mms/model/MediaModel;
    :goto_0
    new-instance v4, Lcom/android/mms/model/SlideModel;

    const/16 v5, 0x1388

    invoke-direct {v4, v5, v3}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/List;)V

    return-object v4

    .line 343
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Failed to get media model."

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v4, "Unsupported SMIL element."

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getBytesFromString(Ljava/lang/String;)[B
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 443
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-static {p0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v1

    .line 448
    .local v1, "p":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    .line 450
    .local v2, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 451
    .local v0, "msgType":I
    const/16 v3, 0x80

    if-eq v0, v3, :cond_0

    .line 452
    const/16 v3, 0x84

    if-ne v0, v3, :cond_1

    .line 453
    :cond_0
    check-cast v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local v2    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    return-object v3

    .line 455
    .restart local v2    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3}, Lcom/google/android/mms/MmsException;-><init>()V

    throw v3
.end method

.method private static hasVcardOrVcalContent(Lcom/android/mms/model/MediaModel;)Z
    .locals 2
    .param p0, "media"    # Lcom/android/mms/model/MediaModel;

    .prologue
    .line 325
    if-eqz p0, :cond_1

    .line 326
    const-string/jumbo v0, "text/x-vCard"

    .line 327
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    const-string/jumbo v0, "text/x-vCalendar"

    .line 328
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 326
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 330
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;
    .locals 19
    .param p1, "document"    # Lorg/w3c/dom/smil/SMILDocument;

    .prologue
    .line 358
    new-instance v10, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v10}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 360
    .local v10, "pb":Lcom/google/android/mms/pdu/PduBody;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "slide$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/mms/model/SlideModel;

    .line 361
    .local v11, "slide":Lcom/android/mms/model/SlideModel;
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "media$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/model/MediaModel;

    .line 362
    .local v5, "media":Lcom/android/mms/model/MediaModel;
    new-instance v9, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v9}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 364
    .local v9, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v16, v5

    .line 365
    check-cast v16, Lcom/android/mms/model/TextModel;

    .line 367
    .local v16, "text":Lcom/android/mms/model/TextModel;
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 371
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/TextModel;->getCharset()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 375
    .end local v16    # "text":Lcom/android/mms/model/TextModel;
    :cond_2
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideshowModel;->getBytesFromString(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 377
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v14

    .line 378
    .local v14, "src":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 380
    const-string/jumbo v17, "cid:"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    .line 381
    .local v15, "startWithContentId":Z
    if-eqz v15, :cond_4

    .line 382
    const-string/jumbo v17, "cid:"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 388
    .local v4, "location":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/mms/model/SlideshowModel;->getBytesFromString(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 391
    move-object v7, v4

    .line 392
    .local v7, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/mms/model/SlideshowModel;->getBytesFromString(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 396
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 397
    if-eqz v15, :cond_5

    .line 399
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/mms/model/SlideshowModel;->getBytesFromString(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 411
    .end local v4    # "location":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v15    # "startWithContentId":Z
    :cond_3
    :goto_2
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 412
    check-cast v5, Lcom/android/mms/model/TextModel;

    .end local v5    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideshowModel;->getBytesFromString(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 425
    :goto_3
    invoke-virtual {v10, v9}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto/16 :goto_0

    .line 384
    .restart local v5    # "media":Lcom/android/mms/model/MediaModel;
    .restart local v15    # "startWithContentId":Z
    :cond_4
    move-object v4, v14

    .restart local v4    # "location":Ljava/lang/String;
    goto :goto_1

    .line 401
    .restart local v7    # "name":Ljava/lang/String;
    :cond_5
    const-string/jumbo v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 402
    .local v3, "index":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v3, v0, :cond_6

    .line 403
    move-object v2, v4

    .line 404
    .local v2, "contentId":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/model/SlideshowModel;->getBytesFromString(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    goto :goto_2

    .line 403
    .end local v2    # "contentId":Ljava/lang/String;
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "contentId":Ljava/lang/String;
    goto :goto_4

    .line 407
    .end local v2    # "contentId":Ljava/lang/String;
    .end local v3    # "index":I
    :cond_7
    const-string/jumbo v17, "Location is empty"

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_2

    .line 413
    .end local v4    # "location":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v15    # "startWithContentId":Z
    :cond_8
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v17

    if-nez v17, :cond_9

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v17

    if-nez v17, :cond_9

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 414
    :cond_9
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    goto :goto_3

    .line 415
    :cond_a
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isAttachment()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 416
    const-string/jumbo v17, "text/x-vCard"

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 417
    const-string/jumbo v17, "text/x-vCard"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideshowModel;->getBytesFromString(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 418
    const/16 v17, 0x6a

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 420
    :cond_b
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    goto/16 :goto_3

    .line 422
    :cond_c
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Unsupport media: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 430
    .end local v5    # "media":Lcom/android/mms/model/MediaModel;
    .end local v6    # "media$iterator":Ljava/util/Iterator;
    .end local v9    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v11    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v14    # "src":Ljava/lang/String;
    :cond_d
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 431
    .local v8, "out":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;->serialize(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V

    .line 432
    new-instance v13, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v13}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 433
    .local v13, "smilPart":Lcom/google/android/mms/pdu/PduPart;
    const-string/jumbo v17, "smil"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideshowModel;->getBytesFromString(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 434
    const-string/jumbo v17, "smil.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideshowModel;->getBytesFromString(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 435
    const-string/jumbo v17, "application/smil"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideshowModel;->getBytesFromString(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 436
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 437
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0, v13}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 439
    return-object v10
.end method

.method private setSlideNodeNum(I)V
    .locals 0
    .param p1, "slideNodeNum"    # I

    .prologue
    .line 563
    iput p1, p0, Lcom/android/mms/model/SlideshowModel;->mSlideNodeNum:I

    .line 562
    return-void
.end method


# virtual methods
.method public add(ILcom/android/mms/model/SlideModel;)V
    .locals 4
    .param p1, "location"    # I
    .param p2, "object"    # Lcom/android/mms/model/SlideModel;

    .prologue
    .line 610
    if-eqz p2, :cond_1

    .line 611
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 612
    .local v0, "increaseSize":I
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 614
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 615
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 616
    invoke-virtual {p2, p0}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 617
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "observer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/IModelChangedObserver;

    .line 618
    .local v1, "observer":Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p2, v1}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 620
    .end local v1    # "observer":Lcom/android/mms/model/IModelChangedObserver;
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 609
    .end local v0    # "increaseSize":I
    .end local v2    # "observer$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 609
    check-cast p2, Lcom/android/mms/model/SlideModel;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    return-void
.end method

.method public add(Lcom/android/mms/model/SlideModel;)Z
    .locals 5
    .param p1, "object"    # Lcom/android/mms/model/SlideModel;

    .prologue
    const/4 v4, 0x1

    .line 487
    if-eqz p1, :cond_1

    .line 488
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 489
    .local v0, "increaseSize":I
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 491
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 492
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 493
    invoke-virtual {p1, p0}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 494
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "observer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/IModelChangedObserver;

    .line 495
    .local v1, "observer":Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p1, v1}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 497
    .end local v1    # "observer":Lcom/android/mms/model/IModelChangedObserver;
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 498
    return v4

    .line 501
    .end local v0    # "increaseSize":I
    .end local v2    # "observer$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 486
    check-cast p1, Lcom/android/mms/model/SlideModel;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 626
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/mms/model/SlideModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 505
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/mms/model/SlideModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canPlaySlideShow()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 830
    iget-object v7, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v7, v5, :cond_0

    .line 831
    return v6

    .line 833
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 834
    .local v2, "mediaModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    iget-object v7, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "model$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 835
    .local v3, "model":Lcom/android/mms/model/SlideModel;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "mediaModel$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 836
    .local v0, "mediaModel":Lcom/android/mms/model/MediaModel;
    instance-of v7, v0, Lcom/sonyericsson/conversations/model/AttachmentModel;

    if-nez v7, :cond_2

    .line 837
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 841
    .end local v0    # "mediaModel":Lcom/android/mms/model/MediaModel;
    .end local v1    # "mediaModel$iterator":Ljava/util/Iterator;
    .end local v3    # "model":Lcom/android/mms/model/SlideModel;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v5, :cond_4

    :goto_1
    return v5

    :cond_4
    move v5, v6

    goto :goto_1
.end method

.method public checkMessageSize(I)V
    .locals 3
    .param p1, "increaseSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 779
    iget-boolean v1, p0, Lcom/android/mms/model/SlideshowModel;->mSizeRestrictionActive:Z

    if-eqz v1, :cond_0

    .line 780
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 781
    .local v0, "cr":Lcom/android/mms/model/ContentRestriction;
    iget v1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mContentResolver:Landroid/content/ContentResolver;

    invoke-interface {v0, v1, p1, v2}, Lcom/android/mms/model/ContentRestriction;->checkMessageSize(IILandroid/content/ContentResolver;)V

    .line 778
    .end local v0    # "cr":Lcom/android/mms/model/ContentRestriction;
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 509
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 510
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "slide$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 511
    .local v2, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2, p0}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 512
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "observer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/IModelChangedObserver;

    .line 513
    .local v0, "observer":Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 516
    .end local v0    # "observer":Lcom/android/mms/model/IModelChangedObserver;
    .end local v1    # "observer$iterator":Ljava/util/Iterator;
    .end local v2    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_1
    iput v5, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 517
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 518
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 508
    .end local v3    # "slide$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 529
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public decreaseMessageSize(I)V
    .locals 1
    .param p1, "decreaseSize"    # I

    .prologue
    .line 474
    if-lez p1, :cond_0

    .line 475
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 473
    :cond_0
    return-void
.end method

.method public get(I)Lcom/android/mms/model/SlideModel;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 629
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMessageSize()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    return v0
.end method

.method public getLayout()Lcom/android/mms/model/LayoutModel;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    return-object v0
.end method

.method public getMediaModelList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 692
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 693
    .local v2, "mediaModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "slideModel$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 694
    .local v3, "slideModel":Lcom/android/mms/model/SlideModel;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "mediaModel$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 695
    .local v0, "mediaModel":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 698
    .end local v0    # "mediaModel":Lcom/android/mms/model/MediaModel;
    .end local v1    # "mediaModel$iterator":Ljava/util/Iterator;
    .end local v3    # "slideModel":Lcom/android/mms/model/SlideModel;
    :cond_1
    return-object v2
.end method

.method public getMediaModelUriList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 702
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .local v4, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "slideModel$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 704
    .local v2, "slideModel":Lcom/android/mms/model/SlideModel;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "mediaModel$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 706
    .local v0, "mediaModel":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v5

    if-nez v5, :cond_1

    .line 707
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 711
    .end local v0    # "mediaModel":Lcom/android/mms/model/MediaModel;
    .end local v1    # "mediaModel$iterator":Ljava/util/Iterator;
    .end local v2    # "slideModel":Lcom/android/mms/model/SlideModel;
    :cond_2
    return-object v4
.end method

.method public getTag()J
    .locals 2

    .prologue
    .line 826
    iget-wide v0, p0, Lcom/android/mms/model/SlideshowModel;->mTag:J

    return-wide v0
.end method

.method public hasBigContent()Z
    .locals 3

    .prologue
    .line 571
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "slide$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 572
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImageExcludingLocationImage()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 573
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 576
    .end local v0    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public hasLocationContent()Z
    .locals 3

    .prologue
    .line 580
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "slide$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 581
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasLocationImage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 582
    const/4 v2, 0x1

    return v2

    .line 585
    .end local v0    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public hasMoreThanOneSlide()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 567
    iget v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlideNodeNum:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public increaseMessageSize(I)V
    .locals 1
    .param p1, "increaseSize"    # I

    .prologue
    .line 468
    if-lez p1, :cond_0

    .line 469
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 467
    :cond_0
    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isOnlyText()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 786
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 787
    return v3

    .line 790
    :cond_0
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "slideModel$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 791
    .local v0, "slideModel":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAttachment()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-nez v2, :cond_2

    .line 792
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    .line 791
    if-eqz v2, :cond_1

    .line 793
    :cond_2
    const/4 v2, 0x0

    return v2

    .line 796
    .end local v0    # "slideModel":Lcom/android/mms/model/SlideModel;
    :cond_3
    return v3
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 1
    .param p1, "model"    # Lcom/android/mms/model/Model;
    .param p2, "dataChanged"    # Z

    .prologue
    const/4 v0, 0x0

    .line 748
    if-eqz p2, :cond_0

    .line 749
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 750
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 747
    :cond_0
    return-void
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .param p1, "observer"    # Lcom/android/mms/model/IModelChangedObserver;

    .prologue
    .line 721
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/LayoutModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 723
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "slide$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 724
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 720
    .end local v0    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method public remove(I)Lcom/android/mms/model/SlideModel;
    .locals 2
    .param p1, "location"    # I

    .prologue
    .line 650
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 651
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 653
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 654
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 656
    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 649
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 544
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 545
    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 546
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 547
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 548
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 549
    return v2

    .line 551
    .end local v0    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 555
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 559
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;
    .locals 6
    .param p1, "location"    # I
    .param p2, "object"    # Lcom/android/mms/model/SlideModel;

    .prologue
    .line 660
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 661
    .local v4, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz p2, :cond_1

    .line 662
    const/4 v3, 0x0

    .line 663
    .local v3, "removeSize":I
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 664
    .local v0, "addSize":I
    if-eqz v4, :cond_0

    .line 665
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v3

    .line 667
    :cond_0
    if-le v0, v3, :cond_3

    .line 668
    sub-int v5, v0, v3

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 669
    sub-int v5, v0, v3

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 675
    .end local v0    # "addSize":I
    .end local v3    # "removeSize":I
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "slide":Lcom/android/mms/model/SlideModel;
    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 676
    .restart local v4    # "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v4, :cond_2

    .line 677
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 680
    :cond_2
    if-eqz p2, :cond_4

    .line 681
    invoke-virtual {p2, p0}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 682
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "observer$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/IModelChangedObserver;

    .line 683
    .local v1, "observer":Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p2, v1}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_1

    .line 671
    .end local v1    # "observer":Lcom/android/mms/model/IModelChangedObserver;
    .end local v2    # "observer$iterator":Ljava/util/Iterator;
    .restart local v0    # "addSize":I
    .restart local v3    # "removeSize":I
    :cond_3
    sub-int v5, v3, v0

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    goto :goto_0

    .line 687
    .end local v0    # "addSize":I
    .end local v3    # "removeSize":I
    :cond_4
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 688
    return-object v4
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 659
    check-cast p2, Lcom/android/mms/model/SlideModel;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentMessageSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 460
    iput p1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 459
    return-void
.end method

.method public setTag(J)V
    .locals 1
    .param p1, "tag"    # J

    .prologue
    .line 822
    iput-wide p1, p0, Lcom/android/mms/model/SlideshowModel;->mTag:J

    .line 821
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sync(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 9
    .param p1, "pb"    # Lcom/google/android/mms/pdu/PduBody;

    .prologue
    .line 757
    iget-object v8, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "slide$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 758
    .local v4, "slide":Lcom/android/mms/model/SlideModel;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "media$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 761
    .local v1, "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v6

    .line 762
    .local v6, "src":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 765
    const-string/jumbo v8, "cid:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "cid:"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, "location":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v3

    .line 767
    .local v3, "part":Lcom/google/android/mms/pdu/PduPart;
    if-eqz v3, :cond_1

    .line 768
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v7

    .line 769
    .local v7, "uri":Landroid/net/Uri;
    if-eqz v7, :cond_1

    .line 770
    invoke-virtual {v1, v7}, Lcom/android/mms/model/MediaModel;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 765
    .end local v0    # "location":Ljava/lang/String;
    .end local v3    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_2
    move-object v0, v6

    .restart local v0    # "location":Ljava/lang/String;
    goto :goto_1

    .line 754
    .end local v0    # "location":Ljava/lang/String;
    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    .end local v2    # "media$iterator":Ljava/util/Iterator;
    .end local v4    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v6    # "src":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 606
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toPduBody()Lcom/google/android/mms/pdu/PduBody;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    if-nez v0, :cond_0

    .line 351
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 352
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    invoke-direct {p0, v0}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    return-object v0
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 3

    .prologue
    .line 740
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2}, Lcom/android/mms/model/LayoutModel;->unregisterAllModelChangedObservers()V

    .line 742
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "slide$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 743
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 739
    .end local v0    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .param p1, "observer"    # Lcom/android/mms/model/IModelChangedObserver;

    .prologue
    .line 731
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/LayoutModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 733
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "slide$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 734
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 730
    .end local v0    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method
