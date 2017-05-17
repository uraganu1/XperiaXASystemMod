.class Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;
.super Ljava/lang/Object;
.source "RestrictionsChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentItem"
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_ui_Composer$SendingTechnologySwitchesValues:[I


# instance fields
.field private final mImStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

.field private final mMmsStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_conversations_ui_Composer$SendingTechnologySwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;->-com_sonyericsson_conversations_ui_Composer$SendingTechnologySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;->-com_sonyericsson_conversations_ui_Composer$SendingTechnologySwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->values()[Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->JOYN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->UNKNOWN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;->-com_sonyericsson_conversations_ui_Composer$SendingTechnologySwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mmsStatus"    # Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    .param p3, "imStatus"    # Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;->mUri:Landroid/net/Uri;

    .line 57
    iput-object p2, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;->mMmsStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 58
    iput-object p3, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;->mImStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 55
    return-void
.end method


# virtual methods
.method public getStatus(Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    .locals 2
    .param p1, "allowedSendTechnology"    # Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    .prologue
    .line 62
    invoke-static {}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;->-getcom_sonyericsson_conversations_ui_Composer$SendingTechnologySwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    const-string/jumbo v1, "Unknown allowed send technology detected \'"

    .line 74
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    const-string/jumbo v1, "\'"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v0

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;->mMmsStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;->mImStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    if-ne v0, v1, :cond_1

    .line 65
    :cond_0
    sget-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v0

    .line 67
    :cond_1
    sget-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v0

    .line 70
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;->mMmsStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v0

    .line 72
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;->mImStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
