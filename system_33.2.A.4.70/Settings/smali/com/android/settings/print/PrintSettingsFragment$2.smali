.class Lcom/android/settings/print/PrintSettingsFragment$2;
.super Lcom/android/settings/print/PrintSettingsFragment$SettingsContentObserver;
.source "PrintSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/print/PrintSettingsFragment;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-direct {p0, p2}, Lcom/android/settings/print/PrintSettingsFragment$SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->-wrap0(Lcom/android/settings/print/PrintSettingsFragment;)V

    .line 123
    return-void
.end method
