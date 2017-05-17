.class public Lcom/sonymobile/rcs/utils/IntentUtil;
.super Ljava/lang/Object;
.source "IntentUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createExpicitIntent(Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v3, "com.sonymobile.rcs"

    .line 10
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 11
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 14
    return-object v2
.end method
