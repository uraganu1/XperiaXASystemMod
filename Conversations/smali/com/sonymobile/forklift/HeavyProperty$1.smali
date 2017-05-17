.class Lcom/sonymobile/forklift/HeavyProperty$1;
.super Ljava/lang/Object;
.source "HeavyProperty.java"

# interfaces
.implements Lcom/sonymobile/forklift/OnComplete1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/forklift/HeavyProperty;->loadSyncWith(Lcom/sonymobile/forklift/Forklift;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonymobile/forklift/OnComplete1",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/forklift/HeavyProperty;

.field final synthetic val$syncResult:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sonymobile/forklift/HeavyProperty;[Ljava/lang/Object;)V
    .locals 0
    .param p2, "val$syncResult"    # [Ljava/lang/Object;

    .prologue
    .line 106
    .local p1, "this$0":Lcom/sonymobile/forklift/HeavyProperty;, "Lcom/sonymobile/forklift/HeavyProperty<TV;>;"
    iput-object p1, p0, Lcom/sonymobile/forklift/HeavyProperty$1;->this$0:Lcom/sonymobile/forklift/HeavyProperty;

    iput-object p2, p0, Lcom/sonymobile/forklift/HeavyProperty$1;->val$syncResult:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "result":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/sonymobile/forklift/HeavyProperty$1;->val$syncResult:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 108
    return-void
.end method
