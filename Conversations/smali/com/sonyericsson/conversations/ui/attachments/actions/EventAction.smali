.class public Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;
.super Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;
.source "EventAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction$AddVCalendarTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;-><init>()V

    return-void
.end method

.method public static buildEventAttachment(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    .locals 1
    .param p0, "eventUri"    # Landroid/net/Uri;

    .prologue
    .line 34
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->setUri(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->setEvent()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->build()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    move-result-object v0

    return-object v0
.end method

.method private getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getCalendarPicker()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleActivityResult(ILandroid/content/Intent;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 59
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction$AddVCalendarTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction$AddVCalendarTask;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction$AddVCalendarTask;)V

    new-array v1, v3, [Landroid/content/Intent;

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction$AddVCalendarTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    const v1, 0x7f0b01c5

    .line 61
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public handleButtonClicked()V
    .locals 3

    .prologue
    .line 52
    sget-object v0, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_VCALENDAR:Lcom/sonyericsson/conversations/ui/AddMediaType;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->pushGoogleAnalyticsEvent(Lcom/sonyericsson/conversations/ui/AddMediaType;)V

    .line 53
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;->getMenuItemEnum()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->requestResult(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;Landroid/content/Intent;)Z

    .line 51
    return-void
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/EventAction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/conversations/util/PackageUtil;->isActivityEnabled(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
