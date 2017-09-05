.class Lcom/android/systemui/recents/Recents$2$1;
.super Ljava/lang/Object;
.source "Recents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/Recents$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/Recents$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/Recents$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/recents/Recents$2;

    .prologue
    .line 963
    iput-object p1, p0, Lcom/android/systemui/recents/Recents$2$1;->this$1:Lcom/android/systemui/recents/Recents$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$2$1;->this$1:Lcom/android/systemui/recents/Recents$2;

    iget-object v0, v0, Lcom/android/systemui/recents/Recents$2;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-virtual {v0}, Lcom/android/systemui/recents/Recents;->onAnimationStarted()V

    .line 965
    return-void
.end method
