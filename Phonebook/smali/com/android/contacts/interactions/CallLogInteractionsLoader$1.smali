.class Lcom/android/contacts/interactions/CallLogInteractionsLoader$1;
.super Ljava/lang/Object;
.source "CallLogInteractionsLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/CallLogInteractionsLoader;->loadInBackground()Ljava/util/List;
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
        "Lcom/android/contacts/interactions/ContactInteraction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/CallLogInteractionsLoader;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/CallLogInteractionsLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/interactions/CallLogInteractionsLoader;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader$1;->this$0:Lcom/android/contacts/interactions/CallLogInteractionsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/contacts/interactions/ContactInteraction;Lcom/android/contacts/interactions/ContactInteraction;)I
    .locals 4
    .param p1, "i1"    # Lcom/android/contacts/interactions/ContactInteraction;
    .param p2, "i2"    # Lcom/android/contacts/interactions/ContactInteraction;

    .prologue
    .line 69
    invoke-interface {p2}, Lcom/android/contacts/interactions/ContactInteraction;->getInteractionDate()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/android/contacts/interactions/ContactInteraction;->getInteractionDate()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 70
    const/4 v0, 0x1

    return v0

    .line 71
    :cond_0
    invoke-interface {p2}, Lcom/android/contacts/interactions/ContactInteraction;->getInteractionDate()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/android/contacts/interactions/ContactInteraction;->getInteractionDate()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 72
    const/4 v0, 0x0

    return v0

    .line 74
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "i1"    # Ljava/lang/Object;
    .param p2, "i2"    # Ljava/lang/Object;

    .prologue
    .line 68
    check-cast p1, Lcom/android/contacts/interactions/ContactInteraction;

    .end local p1    # "i1":Ljava/lang/Object;
    check-cast p2, Lcom/android/contacts/interactions/ContactInteraction;

    .end local p2    # "i2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/interactions/CallLogInteractionsLoader$1;->compare(Lcom/android/contacts/interactions/ContactInteraction;Lcom/android/contacts/interactions/ContactInteraction;)I

    move-result v0

    return v0
.end method
