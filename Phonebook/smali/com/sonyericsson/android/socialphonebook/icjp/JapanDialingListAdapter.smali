.class public Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "JapanDialingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter$ListViewCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final INTERNATIONAL_NUMBER_POSITION:I = 0x0

.field private static final LIST_SIZE:I = 0x2

.field private static final LOCAL_NUMBER_POSITION:I = 0x1


# instance fields
.field private mBidiFormatter:Landroid/support/v4/text/BidiFormatter;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNumber:Ljava/lang/String;

.field private mNumberE164:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callIntent"    # Landroid/content/Intent;

    .prologue
    .line 56
    const v2, 0x7f0400d5

    invoke-direct {p0, p1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 57
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;->mContext:Landroid/content/Context;

    .line 58
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 59
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;->mBidiFormatter:Landroid/support/v4/text/BidiFormatter;

    .line 60
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2, v2}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "phoneNumber":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;->mNumber:Ljava/lang/String;

    .line 64
    sget-object v2, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "e164Number":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;->mNumberE164:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "formattedPhoneNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;->mBidiFormatter:Landroid/support/v4/text/BidiFormatter;

    invoke-virtual {v1, v0}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x2

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 109
    packed-switch p1, :pswitch_data_0

    .line 115
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 111
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;->mNumber:Ljava/lang/String;

    return-object v0

    .line 113
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;->mNumberE164:Ljava/lang/String;

    return-object v0

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v7, 0x7f090392

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 79
    if-eqz p2, :cond_0

    .line 80
    move-object v0, p2

    .line 81
    .local v0, "resultView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter$ListViewCache;

    .line 89
    .local v1, "viewCache":Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter$ListViewCache;
    :goto_0
    if-nez p1, :cond_1

    .line 90
    iget-object v2, v1, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter$ListViewCache;->majorText:Landroid/widget/TextView;

    const v3, 0x7f09038e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 91
    iget-object v2, v1, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter$ListViewCache;->minorText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 92
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;->mNumberE164:Ljava/lang/String;

    aput-object v5, v4, v6

    .line 91
    invoke-virtual {v3, v7, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_1
    return-object v0

    .line 83
    .end local v0    # "resultView":Landroid/view/View;
    .end local v1    # "viewCache":Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter$ListViewCache;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400d5

    invoke-virtual {v2, v3, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 85
    .restart local v0    # "resultView":Landroid/view/View;
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter$ListViewCache;

    invoke-direct {v1, v0}, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter$ListViewCache;-><init>(Landroid/view/View;)V

    .line 86
    .restart local v1    # "viewCache":Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter$ListViewCache;
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v2, v1, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter$ListViewCache;->majorText:Landroid/widget/TextView;

    const v3, 0x7f09038f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 95
    iget-object v2, v1, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter$ListViewCache;->minorText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 96
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;->mNumber:Ljava/lang/String;

    aput-object v5, v4, v6

    .line 95
    invoke-virtual {v3, v7, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
