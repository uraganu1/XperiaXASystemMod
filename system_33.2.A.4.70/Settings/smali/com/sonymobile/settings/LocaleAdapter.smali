.class public final Lcom/sonymobile/settings/LocaleAdapter;
.super Landroid/widget/BaseAdapter;
.source "LocaleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/LocaleAdapter$Builder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDividerColor:I

.field private mDividerHeight:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLocales:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "locales":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/settings/LocaleAdapter;->mDividerColor:I

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/settings/LocaleAdapter;->mDividerHeight:I

    .line 42
    iput-object p1, p0, Lcom/sonymobile/settings/LocaleAdapter;->mContext:Landroid/content/Context;

    .line 43
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sonymobile/settings/LocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonymobile/settings/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    .line 41
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/settings/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonymobile/settings/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/LocaleAdapter;->getItem(I)Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 87
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/LocaleAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPosition(Ljava/util/Locale;)I
    .locals 5
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v4, -0x1

    .line 75
    const/4 v2, 0x0

    .line 76
    .local v2, "position":I
    if-nez p1, :cond_0

    return v4

    .line 77
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/settings/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 78
    .local v0, "l":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    return v2

    .line 81
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "l":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_2
    return v4
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 109
    iget-object v2, p0, Lcom/sonymobile/settings/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 110
    .local v0, "localeInfo":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    if-nez p2, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    if-nez v2, :cond_1

    .line 112
    new-instance p2, Landroid/view/View;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v2, p0, Lcom/sonymobile/settings/LocaleAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 113
    .restart local p2    # "convertView":Landroid/view/View;
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    .line 114
    iget v3, p0, Lcom/sonymobile/settings/LocaleAdapter;->mDividerHeight:I

    const/4 v4, -0x1

    .line 113
    invoke-direct {v2, v4, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget v2, p0, Lcom/sonymobile/settings/LocaleAdapter;->mDividerColor:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 123
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    if-nez v2, :cond_2

    .line 124
    invoke-virtual {p2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 130
    :goto_1
    return-object p2

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/settings/LocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400fb

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v2, p2

    .line 119
    check-cast v2, Landroid/widget/CheckedTextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setMaxLines(I)V

    move-object v2, p2

    .line 120
    check-cast v2, Landroid/widget/CheckedTextView;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setMinEms(I)V

    goto :goto_0

    :cond_2
    move-object v1, p2

    .line 126
    check-cast v1, Landroid/widget/CheckedTextView;

    .line 127
    .local v1, "v":Landroid/widget/CheckedTextView;
    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/LocaleAdapter;->isEnabled(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonymobile/settings/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDividerColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/sonymobile/settings/LocaleAdapter;->mDividerColor:I

    .line 47
    return-void
.end method
