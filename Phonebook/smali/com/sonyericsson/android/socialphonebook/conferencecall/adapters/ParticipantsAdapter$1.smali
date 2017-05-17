.class Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$1;
.super Ljava/lang/Object;
.source "ParticipantsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$1;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 52
    .local v0, "position":I
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$1;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$1;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;->remove(Ljava/lang/Object;)V

    .line 53
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$1;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;->notifyDataSetChanged()V

    .line 54
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$1;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;->-get0(Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;)Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ParticipantRemovedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ParticipantRemovedListener;->onParticipantRemoved(I)V

    .line 50
    return-void
.end method
