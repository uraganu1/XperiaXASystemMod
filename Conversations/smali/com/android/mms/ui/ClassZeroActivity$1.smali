.class Lcom/android/mms/ui/ClassZeroActivity$1;
.super Ljava/lang/Object;
.source "ClassZeroActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ClassZeroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ClassZeroActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ClassZeroActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/mms/ui/ClassZeroActivity;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    .line 93
    const-string/jumbo v1, ""

    .line 94
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/ClassZeroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 95
    const v3, 0x7f0b0188

    .line 94
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ClassZeroActivity;->-wrap2(Lcom/android/mms/ui/ClassZeroActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method
