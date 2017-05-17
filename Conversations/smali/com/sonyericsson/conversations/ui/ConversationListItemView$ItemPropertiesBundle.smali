.class Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;
.super Ljava/lang/Object;
.source "ConversationListItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemPropertiesBundle"
.end annotation


# instance fields
.field private mConversationName:Landroid/text/SpannableStringBuilder;

.field private mIsGroupChatTerminatedByUser:Z

.field private mParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;)Landroid/text/SpannableStringBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->mConversationName:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->mIsGroupChatTerminatedByUser:Z

    return v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->mParticipants:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->mConversationName:Landroid/text/SpannableStringBuilder;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->mIsGroupChatTerminatedByUser:Z

    return p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->mParticipants:Ljava/util/List;

    return-object p1
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->mParticipants:Ljava/util/List;

    .line 521
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->mConversationName:Landroid/text/SpannableStringBuilder;

    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->mIsGroupChatTerminatedByUser:Z

    .line 517
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 527
    if-ne p0, p1, :cond_0

    .line 528
    return v4

    .line 530
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 531
    :cond_1
    return v3

    :cond_2
    move-object v0, p1

    .line 534
    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;

    .line 536
    .local v0, "that":Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->mIsGroupChatTerminatedByUser:Z

    iget-boolean v2, v0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->mIsGroupChatTerminatedByUser:Z

    if-eq v1, v2, :cond_3

    .line 537
    return v3

    .line 539
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->mParticipants:Ljava/util/List;

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->mParticipants:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 540
    return v3

    .line 542
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->mConversationName:Landroid/text/SpannableStringBuilder;

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->mConversationName:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 543
    return v3

    .line 545
    :cond_5
    return v4
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 550
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->mParticipants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 551
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->mConversationName:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 552
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->mIsGroupChatTerminatedByUser:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 553
    return v0

    .line 552
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
