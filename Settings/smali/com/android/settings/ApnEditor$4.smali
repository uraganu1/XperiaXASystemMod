.class Lcom/android/settings/ApnEditor$4;
.super Ljava/lang/Object;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApnEditor;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/ApnEditor;

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/android/settings/ApnEditor$4;->this$0:Lcom/android/settings/ApnEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/android/settings/ApnEditor$4;->this$0:Lcom/android/settings/ApnEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/ApnEditor;->-wrap0(Lcom/android/settings/ApnEditor;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/android/settings/ApnEditor$4;->this$0:Lcom/android/settings/ApnEditor;

    invoke-virtual {v0}, Lcom/android/settings/ApnEditor;->finish()V

    .line 1362
    :cond_0
    return-void
.end method
