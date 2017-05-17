.class Lcom/sonymobile/forklift/HeavyTask$1;
.super Lcom/sonymobile/forklift/HeavyProperty;
.source "HeavyTask.java"


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
        "Lcom/sonymobile/forklift/HeavyProperty",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/forklift/HeavyTask;


# direct methods
.method constructor <init>(Lcom/sonymobile/forklift/HeavyTask;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/forklift/HeavyTask;
    .param p2, "$anonymous0"    # Ljava/lang/Object;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sonymobile/forklift/HeavyTask$1;->this$0:Lcom/sonymobile/forklift/HeavyTask;

    invoke-direct {p0, p2}, Lcom/sonymobile/forklift/HeavyProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonymobile/forklift/HeavyTask$1;->this$0:Lcom/sonymobile/forklift/HeavyTask;

    invoke-virtual {v0}, Lcom/sonymobile/forklift/HeavyTask;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/sonymobile/forklift/HeavyTask$1;->onBackground()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected onBackground()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonymobile/forklift/HeavyTask$1;->this$0:Lcom/sonymobile/forklift/HeavyTask;

    invoke-virtual {v0}, Lcom/sonymobile/forklift/HeavyTask;->onBackground()V

    .line 126
    const/4 v0, 0x0

    return-object v0
.end method
