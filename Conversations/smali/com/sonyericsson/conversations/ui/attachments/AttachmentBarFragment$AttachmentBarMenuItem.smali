.class public final enum Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;
.super Ljava/lang/Enum;
.source "AttachmentBarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttachmentBarMenuItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

.field public static final enum AUDIO_PICKER:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

.field public static final enum GALLERY_PICKER:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

.field public static final enum LOCATION_PICKER:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

.field public static final enum OVERFLOW_CONTACTS:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

.field public static final enum OVERFLOW_EVENT:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

.field public static final enum OVERFLOW_FILE:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

.field public static final enum OVERFLOW_PICK_AUDIO:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

.field public static final enum OVERFLOW_RECORD_VIDEO:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

.field public static final enum OVERFLOW_SKETCH:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

.field public static final enum STICKER_PICKER:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

.field public static final enum TAKE_PHOTO:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;


# instance fields
.field private final mAction:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;

.field private final mIconResId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private final mItemStringResId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    const-string/jumbo v1, "STICKER_PICKER"

    .line 76
    new-instance v5, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;

    invoke-direct {v5}, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;-><init>()V

    .line 75
    const v3, 0x7f0b0295

    .line 76
    const v4, 0x7f0200fe

    .line 75
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;-><init>(Ljava/lang/String;IIILcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->STICKER_PICKER:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    .line 77
    new-instance v3, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    const-string/jumbo v4, "TAKE_PHOTO"

    .line 78
    new-instance v8, Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction;

    invoke-direct {v8}, Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction;-><init>()V

    .line 77
    const v6, 0x7f0b0296

    .line 78
    const v7, 0x7f0200cf

    move v5, v9

    .line 77
    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;-><init>(Ljava/lang/String;IIILcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;)V

    sput-object v3, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->TAKE_PHOTO:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    .line 79
    new-instance v3, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    const-string/jumbo v4, "GALLERY_PICKER"

    .line 80
    new-instance v8, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;

    invoke-direct {v8}, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;-><init>()V

    .line 79
    const v6, 0x7f0b0297

    .line 80
    const v7, 0x7f0200c5

    move v5, v10

    .line 79
    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;-><init>(Ljava/lang/String;IIILcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;)V

    sput-object v3, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->GALLERY_PICKER:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    .line 81
    new-instance v3, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    const-string/jumbo v4, "LOCATION_PICKER"

    .line 82
    new-instance v8, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;

    invoke-direct {v8}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;-><init>()V

    .line 81
    const v6, 0x7f0b0299

    .line 82
    const v7, 0x7f0200ac

    move v5, v11

    .line 81
    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;-><init>(Ljava/lang/String;IIILcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;)V

    sput-object v3, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->LOCATION_PICKER:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    .line 83
    new-instance v3, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    const-string/jumbo v4, "AUDIO_PICKER"

    .line 84
    new-instance v8, Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction;

    invoke-direct {v8}, Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction;-><init>()V

    .line 83
    const v6, 0x7f0b0298

    .line 84
    const v7, 0x7f0200b8

    move v5, v12

    .line 83
    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;-><init>(Ljava/lang/String;IIILcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;)V

    sput-object v3, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->AUDIO_PICKER:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    .line 86
    new-instance v3, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    const-string/jumbo v4, "OVERFLOW_EVENT"

    .line 91
    new-instance v8, Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;

    invoke-direct {v8}, Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;-><init>()V

    .line 86
    const/4 v5, 0x5

    .line 90
    const v6, 0x7f0b029a

    .line 91
    const v7, 0x7f0200ab

    .line 86
    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;-><init>(Ljava/lang/String;IIILcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;)V

    .line 90
    sput-object v3, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->OVERFLOW_EVENT:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    .line 92
    new-instance v3, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    const-string/jumbo v4, "OVERFLOW_PICK_AUDIO"

    .line 93
    new-instance v8, Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction;

    invoke-direct {v8}, Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction;-><init>()V

    .line 92
    const/4 v5, 0x6

    const v6, 0x7f0b029d

    .line 93
    const v7, 0x7f0200ae

    .line 92
    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;-><init>(Ljava/lang/String;IIILcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;)V

    sput-object v3, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->OVERFLOW_PICK_AUDIO:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    .line 94
    new-instance v3, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    const-string/jumbo v4, "OVERFLOW_CONTACTS"

    .line 95
    new-instance v8, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;

    invoke-direct {v8}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;-><init>()V

    .line 94
    const/4 v5, 0x7

    const v6, 0x7f0b029b

    .line 95
    const v7, 0x7f0200a8

    .line 94
    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;-><init>(Ljava/lang/String;IIILcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;)V

    sput-object v3, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->OVERFLOW_CONTACTS:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    .line 96
    new-instance v3, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    const-string/jumbo v4, "OVERFLOW_RECORD_VIDEO"

    .line 97
    new-instance v8, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;

    invoke-direct {v8}, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;-><init>()V

    .line 96
    const/16 v5, 0x8

    const v6, 0x7f0b029c

    .line 97
    const v7, 0x7f0200b6

    .line 96
    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;-><init>(Ljava/lang/String;IIILcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;)V

    sput-object v3, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->OVERFLOW_RECORD_VIDEO:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    .line 98
    new-instance v3, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    const-string/jumbo v4, "OVERFLOW_SKETCH"

    .line 99
    new-instance v8, Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction;

    invoke-direct {v8}, Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction;-><init>()V

    .line 98
    const/16 v5, 0x9

    const v6, 0x7f0b00b5

    .line 99
    const v7, 0x7f0200b3

    .line 98
    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;-><init>(Ljava/lang/String;IIILcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;)V

    sput-object v3, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->OVERFLOW_SKETCH:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    .line 100
    new-instance v3, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    const-string/jumbo v4, "OVERFLOW_FILE"

    .line 101
    new-instance v8, Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction;

    invoke-direct {v8}, Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction;-><init>()V

    .line 100
    const/16 v5, 0xa

    const v6, 0x7f0b00b6

    .line 101
    const v7, 0x7f0200dc

    .line 100
    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;-><init>(Ljava/lang/String;IIILcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;)V

    sput-object v3, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->OVERFLOW_FILE:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    .line 74
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    sget-object v1, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->STICKER_PICKER:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->TAKE_PHOTO:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->GALLERY_PICKER:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->LOCATION_PICKER:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->AUDIO_PICKER:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->OVERFLOW_EVENT:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->OVERFLOW_PICK_AUDIO:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->OVERFLOW_CONTACTS:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->OVERFLOW_RECORD_VIDEO:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->OVERFLOW_SKETCH:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->OVERFLOW_FILE:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->$VALUES:[Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;)V
    .locals 0
    .param p3, "itemString"    # I
    .param p4, "iconResId"    # I
    .param p5, "action"    # Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput p4, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->mIconResId:I

    .line 111
    iput-object p5, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->mAction:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;

    .line 112
    iput p3, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->mItemStringResId:I

    .line 109
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    const-class v0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->$VALUES:[Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    return-object v0
.end method


# virtual methods
.method public getAction()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->mAction:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->mIconResId:I

    return v0
.end method

.method public getItemStringResId()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->mItemStringResId:I

    return v0
.end method

.method public isOverflowItem()Z
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->name()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OVERFLOW_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
