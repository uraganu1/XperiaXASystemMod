.class final Lcom/android/incallui/CallerInfoUtils$1;
.super Ljava/lang/Object;
.source "CallerInfoUtils.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallerInfoUtils;->sendViewNotification(Landroid/content/Context;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Lcom/android/contacts/common/model/Contact;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/content/Loader;Lcom/android/contacts/common/model/Contact;)V
    .locals 3
    .param p2, "contact"    # Lcom/android/contacts/common/model/Contact;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/common/model/Contact;",
            ">;",
            "Lcom/android/contacts/common/model/Contact;",
            ")V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/common/model/Contact;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Loader;->reset()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/incallui/CallerInfoUtils;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Error resetting loader"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "contact"    # Ljava/lang/Object;

    .prologue
    .line 193
    check-cast p2, Lcom/android/contacts/common/model/Contact;

    .end local p2    # "contact":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/CallerInfoUtils$1;->onLoadComplete(Landroid/content/Loader;Lcom/android/contacts/common/model/Contact;)V

    return-void
.end method
