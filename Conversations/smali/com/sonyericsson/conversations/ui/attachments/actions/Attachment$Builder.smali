.class public Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;
.super Ljava/lang/Object;
.source "Attachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private newIsAudio:Z

.field private newIsContact:Z

.field private newIsEvent:Z

.field private newIsFile:Z

.field private newIsImage:Z

.field private newIsLocation:Z

.field private newIsSticker:Z

.field private newIsVideo:Z

.field private newText:Ljava/lang/String;

.field private newUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->newIsAudio:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->newIsContact:Z

    return v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->newIsEvent:Z

    return v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->newIsFile:Z

    return v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->newIsImage:Z

    return v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->newIsLocation:Z

    return v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->newIsSticker:Z

    return v0
.end method

.method static synthetic -get7(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->newIsVideo:Z

    return v0
.end method

.method static synthetic -get8(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->newText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->newUri:Landroid/net/Uri;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;)V

    return-object v0
.end method

.method public setAudio()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->newIsAudio:Z

    .line 124
    return-object p0
.end method

.method public setContact()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->newIsContact:Z

    .line 129
    return-object p0
.end method

.method public setEvent()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->newIsEvent:Z

    .line 139
    return-object p0
.end method

.method public setFile()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->newIsFile:Z

    .line 149
    return-object p0
.end method

.method public setImage()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->newIsImage:Z

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->newIsSticker:Z

    .line 114
    return-object p0
.end method

.method public setLocation()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->newIsLocation:Z

    .line 134
    return-object p0
.end method

.method public setSticker()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->newIsSticker:Z

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->newIsImage:Z

    .line 108
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->newText:Ljava/lang/String;

    .line 144
    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->newUri:Landroid/net/Uri;

    .line 102
    return-object p0
.end method

.method public setVideo()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->newIsVideo:Z

    .line 119
    return-object p0
.end method
