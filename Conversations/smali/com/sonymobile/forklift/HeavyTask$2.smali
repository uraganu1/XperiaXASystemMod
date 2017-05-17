.class Lcom/sonymobile/forklift/HeavyTask$2;
.super Ljava/lang/Object;
.source "HeavyTask.java"

# interfaces
.implements Lcom/sonymobile/forklift/OnComplete1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/forklift/HeavyTask;->createLoader(Lcom/sonymobile/forklift/Forklift;)Lcom/sonymobile/forklift/PropertyLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonymobile/forklift/OnComplete1",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/forklift/HeavyTask;


# direct methods
.method constructor <init>(Lcom/sonymobile/forklift/HeavyTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/forklift/HeavyTask;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/sonymobile/forklift/HeavyTask$2;->this$0:Lcom/sonymobile/forklift/HeavyTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 136
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/forklift/HeavyTask$2;->onComplete(Ljava/lang/Void;)V

    return-void
.end method

.method public onComplete(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonymobile/forklift/HeavyTask$2;->this$0:Lcom/sonymobile/forklift/HeavyTask;

    invoke-static {v0}, Lcom/sonymobile/forklift/HeavyTask;->-get0(Lcom/sonymobile/forklift/HeavyTask;)Lcom/sonymobile/forklift/OnComplete0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/sonymobile/forklift/HeavyTask$2;->this$0:Lcom/sonymobile/forklift/HeavyTask;

    invoke-static {v0}, Lcom/sonymobile/forklift/HeavyTask;->-get0(Lcom/sonymobile/forklift/HeavyTask;)Lcom/sonymobile/forklift/OnComplete0;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/forklift/OnComplete0;->onComplete()V

    .line 136
    :cond_0
    return-void
.end method
