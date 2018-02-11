.class Lcom/sonymobile/settings/backup/BackupCardPreference$1;
.super Ljava/lang/Object;
.source "BackupCardPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/backup/BackupCardPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/backup/BackupCardPreference;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/backup/BackupCardPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/backup/BackupCardPreference;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sonymobile/settings/backup/BackupCardPreference$1;->this$0:Lcom/sonymobile/settings/backup/BackupCardPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference$1;->this$0:Lcom/sonymobile/settings/backup/BackupCardPreference;

    invoke-static {v0}, Lcom/sonymobile/settings/backup/BackupCardPreference;->-get0(Lcom/sonymobile/settings/backup/BackupCardPreference;)Lcom/sonymobile/settings/backup/BackupCardPreference$BackupPreferenceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference$1;->this$0:Lcom/sonymobile/settings/backup/BackupCardPreference;

    invoke-static {v0}, Lcom/sonymobile/settings/backup/BackupCardPreference;->-get0(Lcom/sonymobile/settings/backup/BackupCardPreference;)Lcom/sonymobile/settings/backup/BackupCardPreference$BackupPreferenceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/settings/backup/BackupCardPreference$BackupPreferenceListener;->dismiss()V

    .line 81
    :cond_0
    return-void
.end method
