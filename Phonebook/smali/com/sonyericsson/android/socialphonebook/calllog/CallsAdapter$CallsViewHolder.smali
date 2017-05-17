.class Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;
.super Ljava/lang/Object;
.source "CallsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallsViewHolder"
.end annotation


# instance fields
.field mCallItemsIcon:Landroid/view/View;

.field mDateView:Landroid/widget/TextView;

.field mDurationView:Landroid/widget/TextView;

.field mHdVoiceCallIcon:Landroid/view/View;

.field mSubject:Landroid/widget/TextView;

.field mTimeView:Landroid/widget/TextView;

.field mTypeImage:Landroid/widget/ImageView;

.field mUrgentCallIcon:Landroid/widget/ImageView;

.field mVideoCallIcon:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const v0, 0x7f0e0057

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mDateView:Landroid/widget/TextView;

    .line 220
    const v0, 0x7f0e0058

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mTimeView:Landroid/widget/TextView;

    .line 221
    const v0, 0x7f0e0059

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mDurationView:Landroid/widget/TextView;

    .line 222
    const v0, 0x7f0e005a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mTypeImage:Landroid/widget/ImageView;

    .line 223
    const v0, 0x7f0e005e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mCallItemsIcon:Landroid/view/View;

    .line 224
    const v0, 0x7f0e005c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mVideoCallIcon:Landroid/view/View;

    .line 225
    const v0, 0x7f0e005d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mHdVoiceCallIcon:Landroid/view/View;

    .line 226
    const v0, 0x7f0e005f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mUrgentCallIcon:Landroid/widget/ImageView;

    .line 227
    const v0, 0x7f0e0060

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mSubject:Landroid/widget/TextView;

    .line 218
    return-void
.end method
