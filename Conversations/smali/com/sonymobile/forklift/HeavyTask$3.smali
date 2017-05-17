.class Lcom/sonymobile/forklift/HeavyTask$3;
.super Ljava/lang/Object;
.source "HeavyTask.java"

# interfaces
.implements Lcom/sonymobile/forklift/OnError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/forklift/HeavyTask;->createLoader(Lcom/sonymobile/forklift/Forklift;)Lcom/sonymobile/forklift/PropertyLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/forklift/HeavyTask;


# direct methods
.method constructor <init>(Lcom/sonymobile/forklift/HeavyTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/forklift/HeavyTask;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/sonymobile/forklift/HeavyTask$3;->this$0:Lcom/sonymobile/forklift/HeavyTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sonymobile/forklift/HeavyTask$3;->this$0:Lcom/sonymobile/forklift/HeavyTask;

    invoke-virtual {v0, p1}, Lcom/sonymobile/forklift/HeavyTask;->onError(Ljava/lang/Exception;)V

    .line 143
    return-void
.end method
