.class public Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallsViewHolder;
.super Ljava/lang/Object;
.source "ConferenceCallsViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallsViewHolder$ConferenceCallsViewHolderActionListener;
    }
.end annotation


# instance fields
.field public dateView:Landroid/widget/TextView;

.field mConferenceCallsViewHolderActionListener:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallsViewHolder$ConferenceCallsViewHolderActionListener;

.field public numbers:[Ljava/lang/String;

.field public participantsView:Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallsViewHolder$ConferenceCallsViewHolderActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallsViewHolder$ConferenceCallsViewHolderActionListener;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallsViewHolder;->mConferenceCallsViewHolderActionListener:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallsViewHolder$ConferenceCallsViewHolderActionListener;

    .line 43
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallsViewHolder;->mConferenceCallsViewHolderActionListener:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallsViewHolder$ConferenceCallsViewHolderActionListener;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallsViewHolder;->numbers:[Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallsViewHolder$ConferenceCallsViewHolderActionListener;->onClick(Landroid/view/View;[Ljava/lang/String;)V

    .line 48
    return-void
.end method
