.class Lcom/android/settings/DreamSettings$3;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DreamSettings;

.field final synthetic val$onClick:Ljava/lang/Runnable;

.field final synthetic val$title:I


# direct methods
.method constructor <init>(Lcom/android/settings/DreamSettings;Ljava/lang/Runnable;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DreamSettings;
    .param p2, "val$onClick"    # Ljava/lang/Runnable;
    .param p3, "val$title"    # I

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/settings/DreamSettings$3;->this$0:Lcom/android/settings/DreamSettings;

    iput-object p2, p0, Lcom/android/settings/DreamSettings$3;->val$onClick:Ljava/lang/Runnable;

    iput p3, p0, Lcom/android/settings/DreamSettings$3;->val$title:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/settings/DreamSettings$3;->val$onClick:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/android/settings/DreamSettings;->-set0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 221
    iget v1, p0, Lcom/android/settings/DreamSettings$3;->val$title:I

    const v2, 0x7f0b0431

    if-ne v1, v2, :cond_1

    .line 223
    iget-object v1, p0, Lcom/android/settings/DreamSettings$3;->this$0:Lcom/android/settings/DreamSettings;

    invoke-virtual {v1}, Lcom/android/settings/DreamSettings;->checkRuntimePermissions()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 224
    .local v0, "perm":Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/settings/DreamSettings;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "permission value is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/settings/DreamSettings$3;->val$onClick:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 233
    .end local v0    # "perm":Ljava/lang/Boolean;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DreamSettings$3;->val$onClick:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
