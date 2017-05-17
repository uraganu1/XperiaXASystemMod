.class public Lcom/sonyericsson/conversations/ui/pileview/PileViewController;
.super Ljava/lang/Object;
.source "PileViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/pileview/PileViewController$OnContentDeletedListener;,
        Lcom/sonyericsson/conversations/ui/pileview/PileViewController$ExpandedPileViewController;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_ui_pileview_PileItem$TypeSwitchesValues:[I


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mComposer:Lcom/sonyericsson/conversations/ui/Composer;

.field private final mExpandedPileViewController:Lcom/sonyericsson/conversations/ui/pileview/PileViewController$ExpandedPileViewController;

.field private mOnContentDeletedListener:Lcom/sonyericsson/conversations/ui/pileview/PileViewController$OnContentDeletedListener;

.field private final mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/pileview/PileViewController;)Lcom/sonyericsson/conversations/ui/pileview/PileViewController$ExpandedPileViewController;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mExpandedPileViewController:Lcom/sonyericsson/conversations/ui/pileview/PileViewController$ExpandedPileViewController;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_conversations_ui_pileview_PileItem$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->-com_sonyericsson_conversations_ui_pileview_PileItem$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->-com_sonyericsson_conversations_ui_pileview_PileItem$TypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->values()[Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ALIEN:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ANIMATED_IMAGE:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ANIMATED_STICKER:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->AUDIO:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->CONTACT:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->IMAGE:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->LOCATION:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->LOCATION_IMAGE:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->STICKER:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->UNKNOWN:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->VCALENDAR:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->VIDEO:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    sput-object v0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->-com_sonyericsson_conversations_ui_pileview_PileItem$TypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_b

    :catch_1
    move-exception v1

    goto :goto_a

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_1

    :catch_b
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/pileview/PileViewController;Lcom/sonyericsson/conversations/ui/pileview/PileItem;)Lcom/android/mms/model/MediaModel;
    .locals 1
    .param p1, "pileItem"    # Lcom/sonyericsson/conversations/ui/pileview/PileItem;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->getMediaModelForPileItem(Lcom/sonyericsson/conversations/ui/pileview/PileItem;)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/ui/pileview/PileViewController;Lcom/android/mms/model/MediaModel;)V
    .locals 0
    .param p1, "model"    # Lcom/android/mms/model/MediaModel;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->deleteItem(Lcom/android/mms/model/MediaModel;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/conversations/ui/pileview/PileView;Lcom/sonyericsson/conversations/ui/pileview/PileViewController$ExpandedPileViewController;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pileView"    # Lcom/sonyericsson/conversations/ui/pileview/PileView;
    .param p3, "expandedPileViewController"    # Lcom/sonyericsson/conversations/ui/pileview/PileViewController$ExpandedPileViewController;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    .line 43
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mActivity:Landroid/app/Activity;

    .line 44
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    .line 45
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mExpandedPileViewController:Lcom/sonyericsson/conversations/ui/pileview/PileViewController$ExpandedPileViewController;

    .line 42
    return-void
.end method

.method private deleteItem(Lcom/android/mms/model/MediaModel;)V
    .locals 1
    .param p1, "model"    # Lcom/android/mms/model/MediaModel;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->deleteAllSlides()V

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mOnContentDeletedListener:Lcom/sonyericsson/conversations/ui/pileview/PileViewController$OnContentDeletedListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController$OnContentDeletedListener;->onContentDeleted()V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    if-eqz p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/Composer;->deleteMedia(Lcom/android/mms/model/MediaModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mOnContentDeletedListener:Lcom/sonyericsson/conversations/ui/pileview/PileViewController$OnContentDeletedListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController$OnContentDeletedListener;->onContentDeleted()V

    goto :goto_0
.end method

.method private enableExpandedView(Ljava/util/ArrayList;Z)V
    .locals 3
    .param p2, "enableExpandedMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/ui/pileview/PileItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "newPileItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/ui/pileview/PileItem;>;"
    const/4 v2, 0x0

    .line 69
    if-eqz p2, :cond_0

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    new-instance v1, Lcom/sonyericsson/conversations/ui/pileview/PileViewController$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController$1;-><init>(Lcom/sonyericsson/conversations/ui/pileview/PileViewController;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->setOnPileDeletedListener(Lcom/sonyericsson/conversations/ui/pileview/PileView$OnPileItemDeleteListener;)V

    .line 68
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    new-instance v1, Lcom/sonyericsson/conversations/ui/pileview/PileViewController$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController$2;-><init>(Lcom/sonyericsson/conversations/ui/pileview/PileViewController;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->setOnPileDeletedListener(Lcom/sonyericsson/conversations/ui/pileview/PileView$OnPileItemDeleteListener;)V

    goto :goto_0
.end method

.method private getCount()I
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "count":I
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    const/4 v0, 0x1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getCurrentMediaItemNbr()I

    move-result v0

    goto :goto_0
.end method

.method private getDefImageResId(Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;)I
    .locals 2
    .param p1, "type"    # Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    .prologue
    .line 166
    invoke-static {}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->-getcom_sonyericsson_conversations_ui_pileview_PileItem$TypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 176
    const v0, 0x7f0200b5

    return v0

    .line 168
    :pswitch_0
    const v0, 0x7f0200b0

    return v0

    .line 170
    :pswitch_1
    const v0, 0x7f020053

    return v0

    .line 172
    :pswitch_2
    const v0, 0x7f0200aa

    return v0

    .line 174
    :pswitch_3
    const v0, 0x7f0200a6

    return v0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getFileName(Lcom/android/mms/model/MediaModel;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lcom/android/mms/model/MediaModel;

    .prologue
    .line 231
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMediaModelForPileItem(Lcom/sonyericsson/conversations/ui/pileview/PileItem;)Lcom/android/mms/model/MediaModel;
    .locals 6
    .param p1, "pileItem"    # Lcom/sonyericsson/conversations/ui/pileview/PileItem;

    .prologue
    const/4 v5, 0x0

    .line 203
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getSupportedMediaItemsWithSlideId()Ljava/util/List;

    move-result-object v2

    .line 204
    .local v2, "media":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;+Lcom/android/mms/model/MediaModel;>;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 205
    :cond_0
    return-object v5

    .line 207
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 208
    .local v0, "item":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Lcom/android/mms/model/MediaModel;>;"
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 209
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/mms/model/MediaModel;

    return-object v3

    .line 212
    .end local v0    # "item":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Lcom/android/mms/model/MediaModel;>;"
    :cond_3
    return-object v5
.end method

.method private getPileItem(I)Lcom/sonyericsson/conversations/ui/pileview/PileItem;
    .locals 12
    .param p1, "pos"    # I

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v0, :cond_0

    .line 102
    return-object v1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    new-instance v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem;

    sget-object v2, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ALIEN:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    sget-object v3, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ALIEN:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->getDefImageResId(Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;)I

    move-result v3

    .line 107
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    .line 106
    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/conversations/ui/pileview/PileItem;-><init>(Ljava/lang/String;Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getSupportedMediaItemsWithSlideId()Ljava/util/List;

    move-result-object v11

    .line 112
    .local v11, "media":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;+Lcom/android/mms/model/MediaModel;>;>;"
    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 113
    :cond_2
    return-object v1

    .line 112
    :cond_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 116
    invoke-interface {v11, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 117
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v11, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v9, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/android/mms/model/MediaModel;

    .line 118
    .local v9, "item":Lcom/android/mms/model/MediaModel;
    if-nez v9, :cond_4

    .line 119
    return-object v1

    .line 122
    :cond_4
    const/4 v1, 0x0

    .line 123
    .local v1, "caption":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->UNKNOWN:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    .line 124
    .local v2, "type":Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;
    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v7, v9

    .line 125
    check-cast v7, Lcom/android/mms/model/ImageModel;

    .line 126
    .local v7, "image":Lcom/android/mms/model/ImageModel;
    invoke-virtual {v7}, Lcom/android/mms/model/ImageModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isGifImage(Ljava/lang/String;)Z

    move-result v8

    .line 127
    .local v8, "isGif":Z
    invoke-virtual {v7}, Lcom/android/mms/model/ImageModel;->isSticker()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 128
    if-eqz v8, :cond_6

    sget-object v2, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ANIMATED_STICKER:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    .line 159
    .end local v1    # "caption":Ljava/lang/String;
    .end local v7    # "image":Lcom/android/mms/model/ImageModel;
    .end local v8    # "isGif":Z
    :cond_5
    :goto_0
    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "contentType":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, "uri":Ljava/lang/String;
    new-instance v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem;

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->getDefImageResId(Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;)I

    move-result v3

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/conversations/ui/pileview/PileItem;-><init>(Ljava/lang/String;Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 128
    .end local v4    # "contentType":Ljava/lang/String;
    .end local v5    # "uri":Ljava/lang/String;
    .restart local v1    # "caption":Ljava/lang/String;
    .restart local v7    # "image":Lcom/android/mms/model/ImageModel;
    .restart local v8    # "isGif":Z
    :cond_6
    sget-object v2, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->STICKER:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    goto :goto_0

    .line 131
    :cond_7
    if-eqz v8, :cond_8

    sget-object v2, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ANIMATED_IMAGE:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    goto :goto_0

    :cond_8
    sget-object v2, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->IMAGE:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    goto :goto_0

    .line 133
    .end local v7    # "image":Lcom/android/mms/model/ImageModel;
    .end local v8    # "isGif":Z
    :cond_9
    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 134
    sget-object v2, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->VIDEO:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    goto :goto_0

    .line 135
    :cond_a
    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 137
    invoke-direct {p0, v9}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->getFileName(Lcom/android/mms/model/MediaModel;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "caption":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->AUDIO:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    goto :goto_0

    .line 139
    .local v1, "caption":Ljava/lang/String;
    :cond_b
    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->isAttachment()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 140
    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v10

    .line 141
    .local v10, "itemUri":Landroid/net/Uri;
    const-string/jumbo v0, "text/x-vCard"

    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v10}, Lcom/sonyericsson/conversations/util/VCardUtil;->isVCardLocationObject(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 143
    invoke-direct {p0, v10}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->getVCardAddress(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "caption":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->LOCATION:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    goto :goto_0

    .line 146
    .local v1, "caption":Ljava/lang/String;
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v10}, Lcom/sonyericsson/conversations/util/VCardUtil;->getVCardContactName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "caption":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->CONTACT:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    goto :goto_0

    .line 149
    .local v1, "caption":Ljava/lang/String;
    :cond_d
    const-string/jumbo v0, "text/x-vCalendar"

    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sonyericsson/conversations/util/VCalendarUtil;->getVCalendarCaption(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "caption":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->VCALENDAR:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    goto :goto_0

    .line 155
    .local v1, "caption":Ljava/lang/String;
    :cond_e
    invoke-direct {p0, v9}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->getFileName(Lcom/android/mms/model/MediaModel;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "caption":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->UNKNOWN:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    goto/16 :goto_0
.end method

.method private getVCardAddress(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .param p1, "itemUri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 181
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mActivity:Landroid/app/Activity;

    invoke-static {v4, p1}, Lcom/sonyericsson/conversations/util/VCardUtil;->getAllVCardContactDetails(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/vcard/VCardEntry;

    move-result-object v1

    .line 182
    .local v1, "entry":Lcom/android/vcard/VCardEntry;
    const-string/jumbo v0, ""

    .line 183
    .local v0, "address":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry;->getPostalList()Ljava/util/List;

    move-result-object v2

    .line 185
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$PostalData;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 186
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vcard/VCardEntry$PostalData;

    .line 187
    .local v3, "postalData":Lcom/android/vcard/VCardEntry$PostalData;
    if-eqz v3, :cond_0

    .line 188
    invoke-virtual {v3, v5}, Lcom/android/vcard/VCardEntry$PostalData;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$PostalData;>;"
    .end local v3    # "postalData":Lcom/android/vcard/VCardEntry$PostalData;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public deletePileItems(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/conversations/ui/pileview/PileItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "removedPileItems":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonyericsson/conversations/ui/pileview/PileItem;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "removedPileItem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem;

    .line 197
    .local v0, "removedPileItem":Lcom/sonyericsson/conversations/ui/pileview/PileItem;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->getMediaModelForPileItem(Lcom/sonyericsson/conversations/ui/pileview/PileItem;)Lcom/android/mms/model/MediaModel;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->deleteItem(Lcom/android/mms/model/MediaModel;)V

    goto :goto_0

    .line 195
    .end local v0    # "removedPileItem":Lcom/sonyericsson/conversations/ui/pileview/PileItem;
    :cond_0
    return-void
.end method

.method public setComposer(Lcom/sonyericsson/conversations/ui/Composer;)V
    .locals 0
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    .line 48
    return-void
.end method

.method public setOnContentDeletedListener(Lcom/sonyericsson/conversations/ui/pileview/PileViewController$OnContentDeletedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/pileview/PileViewController$OnContentDeletedListener;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mOnContentDeletedListener:Lcom/sonyericsson/conversations/ui/pileview/PileViewController$OnContentDeletedListener;

    .line 244
    return-void
.end method

.method public update()V
    .locals 7

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->getCount()I

    move-result v3

    .line 54
    .local v3, "newSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v2, "newPileItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/ui/pileview/PileItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 58
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->getPileItem(I)Lcom/sonyericsson/conversations/ui/pileview/PileItem;

    move-result-object v4

    .line 59
    .local v4, "pileItem":Lcom/sonyericsson/conversations/ui/pileview/PileItem;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v4    # "pileItem":Lcom/sonyericsson/conversations/ui/pileview/PileItem;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    const/4 v0, 0x1

    .line 63
    .local v0, "enableExpandedMode":Z
    :goto_1
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    if-eqz v0, :cond_2

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v6, v2, v5}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->showPileItems(Ljava/util/ArrayList;Z)V

    .line 64
    invoke-direct {p0, v2, v0}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->enableExpandedView(Ljava/util/ArrayList;Z)V

    .line 52
    return-void

    .line 62
    .end local v0    # "enableExpandedMode":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enableExpandedMode":Z
    goto :goto_1

    .line 63
    :cond_2
    const/4 v5, 0x1

    goto :goto_2
.end method
