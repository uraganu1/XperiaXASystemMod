.class Lcom/android/settings/RadioInfo$4;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 920
    iput-object p1, p0, Lcom/android/settings/RadioInfo$4;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 922
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 928
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.phone"

    .line 929
    const-string/jumbo v2, "com.android.phone.settings.fdn.FdnList"

    .line 928
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 930
    iget-object v1, p0, Lcom/android/settings/RadioInfo$4;->this$0:Lcom/android/settings/RadioInfo;

    invoke-virtual {v1, v0}, Lcom/android/settings/RadioInfo;->startActivity(Landroid/content/Intent;)V

    .line 931
    const/4 v1, 0x1

    return v1
.end method
