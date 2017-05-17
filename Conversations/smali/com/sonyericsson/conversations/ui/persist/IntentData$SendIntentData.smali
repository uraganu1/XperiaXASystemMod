.class public Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;
.super Ljava/lang/Object;
.source "IntentData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/persist/IntentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendIntentData"
.end annotation


# instance fields
.field public body:Ljava/lang/String;

.field public contentUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public forcedSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

.field public forwardThreadid:J

.field public forwardedMessageUri:Landroid/net/Uri;

.field public replyAllMessageUri:Landroid/net/Uri;

.field public subject:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    .line 114
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    sget-object v0, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forcedSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    .line 111
    :goto_0
    return-void

    .line 117
    :cond_0
    sget-object v0, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->UNKNOWN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forcedSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    goto :goto_0
.end method


# virtual methods
.method public isEmpty()Z
    .locals 2

    .prologue
    .line 127
    const/4 v0, 0x1

    .line 128
    .local v0, "isEmpty":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    .line 131
    .end local v0    # "isEmpty":Z
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->subject:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->subject:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    .line 134
    :cond_1
    if-eqz v0, :cond_2

    .line 135
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 137
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forwardedMessageUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 138
    const/4 v0, 0x0

    .line 140
    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->replyAllMessageUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 141
    const/4 v0, 0x0

    .line 143
    :cond_4
    return v0
.end method
