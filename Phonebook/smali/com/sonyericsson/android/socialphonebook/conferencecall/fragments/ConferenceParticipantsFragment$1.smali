.class Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$1;
.super Ljava/lang/Object;
.source "ConferenceParticipantsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMessageId:I

.field private mToast:Landroid/widget/Toast;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const v0, 0x7f0903bd

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$1;->mMessageId:I

    .line 90
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;)Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$1;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$1;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;)Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$1;->mMessageId:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$1;->mToast:Landroid/widget/Toast;

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$1;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 96
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->-wrap0(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getConferenceCallIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
