.class Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog$1;
.super Ljava/lang/Object;
.source "ConferenceCallInfoDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->setConferenceCallDialogUsage(Landroid/content/Context;Z)V

    .line 71
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
