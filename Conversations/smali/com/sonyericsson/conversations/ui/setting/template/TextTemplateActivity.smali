.class public Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateActivity;
.super Landroid/app/Activity;
.source "TextTemplateActivity.java"


# instance fields
.field private mTextTemplateFragment:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateActivity;->mTextTemplateFragment:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    .line 17
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f03006a

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 25
    const v1, 0x7f0d0125

    .line 24
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateActivity;->mTextTemplateFragment:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    .line 26
    const-string/jumbo v0, "templates"

    .line 27
    const-string/jumbo v1, "listed_in_settings"

    .line 26
    invoke-static {v0, v1}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateActivity;->mTextTemplateFragment:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 31
    return-void
.end method
