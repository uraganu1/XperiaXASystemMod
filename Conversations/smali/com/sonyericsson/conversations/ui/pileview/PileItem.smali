.class public Lcom/sonyericsson/conversations/ui/pileview/PileItem;
.super Ljava/lang/Object;
.source "PileItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_ui_pileview_PileItem$TypeSwitchesValues:[I


# instance fields
.field private mCaption:Ljava/lang/String;

.field private final mContentType:Ljava/lang/String;

.field private mIconResId:I

.field private final mKey:Ljava/lang/String;

.field private mType:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

.field private final mUri:Ljava/lang/String;


# direct methods
.method private static synthetic -getcom_sonyericsson_conversations_ui_pileview_PileItem$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->-com_sonyericsson_conversations_ui_pileview_PileItem$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->-com_sonyericsson_conversations_ui_pileview_PileItem$TypeSwitchesValues:[I

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

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ANIMATED_STICKER:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->AUDIO:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->CONTACT:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->IMAGE:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->LOCATION:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->LOCATION_IMAGE:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->STICKER:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->UNKNOWN:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->VCALENDAR:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xb

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
    sput-object v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->-com_sonyericsson_conversations_ui_pileview_PileItem$TypeSwitchesValues:[I

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

.method public constructor <init>(Ljava/lang/String;Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "caption"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;
    .param p3, "iconResId"    # I
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "uri"    # Ljava/lang/String;
    .param p6, "key"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p3, p0, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->mIconResId:I

    .line 41
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->mCaption:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->mType:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    .line 43
    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->mContentType:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->mUri:Ljava/lang/String;

    .line 45
    iput-object p6, p0, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->mKey:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public displayImage(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "videoIndicator"    # Landroid/widget/ImageView;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->getType()Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    move-result-object v0

    .line 66
    .local v0, "type":Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->-getcom_sonyericsson_conversations_ui_pileview_PileItem$TypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 79
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->getIconResId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    :goto_0
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->VIDEO:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    return-void

    .line 70
    :pswitch_1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 71
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->mUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/sonyericsson/conversations/util/ImageHandler;->loadPileViewThumbnail(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;)V

    goto :goto_0

    .line 75
    :pswitch_2
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 76
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->mUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/sonyericsson/conversations/util/ImageHandler;->loadPileViewThumbnail(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;)V

    goto :goto_0

    .line 82
    :cond_0
    const/16 v1, 0x8

    goto :goto_1

    .line 66
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getContentDescriptionResId()I
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->-getcom_sonyericsson_conversations_ui_pileview_PileItem$TypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->getType()Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 106
    :pswitch_0
    const v0, 0x7f0b0270

    return v0

    .line 91
    :pswitch_1
    const v0, 0x7f0b0271

    return v0

    .line 93
    :pswitch_2
    const v0, 0x7f0b0272

    return v0

    .line 95
    :pswitch_3
    const v0, 0x7f0b0273

    return v0

    .line 97
    :pswitch_4
    const v0, 0x7f0b0274

    return v0

    .line 99
    :pswitch_5
    const v0, 0x7f0b0275

    return v0

    .line 102
    :pswitch_6
    const v0, 0x7f0b0276

    return v0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->mIconResId:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/PileItem;->mType:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    return-object v0
.end method
