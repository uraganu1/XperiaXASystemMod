.class Lcom/sonymobile/jms/conversation/ImConversationStorageManager$1;
.super Ljava/lang/Object;
.source "ImConversationStorageManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->retrieveImConversations()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonymobile/jms/conversation/ImConversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/jms/conversation/ImConversationStorageManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/jms/conversation/ImConversationStorageManager;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager$1;->this$0:Lcom/sonymobile/jms/conversation/ImConversationStorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/jms/conversation/ImConversation;Lcom/sonymobile/jms/conversation/ImConversation;)I
    .locals 7
    .param p1, "lhs"    # Lcom/sonymobile/jms/conversation/ImConversation;
    .param p2, "rhs"    # Lcom/sonymobile/jms/conversation/ImConversation;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 476
    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImConversation;->getLocalTimestamp()J

    move-result-wide v0

    .line 477
    .local v0, "lhsTimestamp":J
    invoke-virtual {p2}, Lcom/sonymobile/jms/conversation/ImConversation;->getLocalTimestamp()J

    move-result-wide v2

    .line 478
    .local v2, "rhsTimestamp":J
    cmp-long v6, v0, v2

    if-gtz v6, :cond_1

    move v6, v4

    :goto_0
    if-nez v6, :cond_2

    const/4 v4, -0x1

    :cond_0
    :goto_1
    return v4

    :cond_1
    move v6, v5

    goto :goto_0

    :cond_2
    cmp-long v6, v0, v2

    if-ltz v6, :cond_3

    move v6, v4

    :goto_2
    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_1

    :cond_3
    move v6, v5

    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 473
    check-cast p1, Lcom/sonymobile/jms/conversation/ImConversation;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/jms/conversation/ImConversation;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/jms/conversation/ImConversationStorageManager$1;->compare(Lcom/sonymobile/jms/conversation/ImConversation;Lcom/sonymobile/jms/conversation/ImConversation;)I

    move-result v0

    return v0
.end method
