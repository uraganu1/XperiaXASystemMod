.class final Lcom/sonyericsson/android/socialphonebook/upgrade/Upgrade$1;
.super Ljava/lang/Object;
.source "Upgrade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/upgrade/Upgrade;->upgrade(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/upgrade/Upgrade$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/upgrade/Upgrade$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/upgrade/Upgrade;->upgradeSpeedDialSettings(Landroid/content/Context;)V

    .line 44
    return-void
.end method
