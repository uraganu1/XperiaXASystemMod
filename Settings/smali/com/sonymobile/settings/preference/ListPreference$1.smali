.class Lcom/sonymobile/settings/preference/ListPreference$1;
.super Landroid/database/ContentObserver;
.source "ListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/preference/ListPreference;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/preference/ListPreference;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/preference/ListPreference;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/preference/ListPreference;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/sonymobile/settings/preference/ListPreference$1;->this$0:Lcom/sonymobile/settings/preference/ListPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 182
    if-nez p1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sonymobile/settings/preference/ListPreference$1;->this$0:Lcom/sonymobile/settings/preference/ListPreference;

    invoke-static {v0}, Lcom/sonymobile/settings/preference/ListPreference;->-wrap0(Lcom/sonymobile/settings/preference/ListPreference;)V

    .line 180
    :cond_0
    return-void
.end method
