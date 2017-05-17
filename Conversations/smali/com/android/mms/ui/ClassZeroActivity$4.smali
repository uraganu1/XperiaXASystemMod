.class Lcom/android/mms/ui/ClassZeroActivity$4;
.super Ljava/lang/Object;
.source "ClassZeroActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 268
    iput-object p1, p0, Lcom/android/mms/ui/ClassZeroActivity$4;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 270
    new-instance v0, Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity$4;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ClassZeroActivity;->-get1(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 272
    .local v0, "currentZeroValues":Landroid/content/ContentValues;
    new-instance v1, Lcom/android/mms/ui/ClassZeroActivity$4$1;

    const-string/jumbo v2, "saveClassZeroMessageThread"

    invoke-direct {v1, p0, v2, v0}, Lcom/android/mms/ui/ClassZeroActivity$4$1;-><init>(Lcom/android/mms/ui/ClassZeroActivity$4;Ljava/lang/String;Landroid/content/ContentValues;)V

    invoke-virtual {v1}, Lcom/android/mms/ui/ClassZeroActivity$4$1;->start()V

    .line 279
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity$4;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ClassZeroActivity;->-wrap1(Lcom/android/mms/ui/ClassZeroActivity;)V

    .line 269
    return-void
.end method
