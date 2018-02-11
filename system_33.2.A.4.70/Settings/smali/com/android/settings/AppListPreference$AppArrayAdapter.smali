.class public Lcom/android/settings/AppListPreference$AppArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mImageDrawables:[Landroid/graphics/drawable/Drawable;

.field private mSelectedIndex:I

.field final synthetic this$0:Lcom/android/settings/AppListPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/AppListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/AppListPreference;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .param p4, "objects"    # [Ljava/lang/CharSequence;
    .param p5, "imageDrawables"    # [Landroid/graphics/drawable/Drawable;
    .param p6, "selectedIndex"    # I

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings/AppListPreference;

    .line 63
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mSelectedIndex:I

    .line 64
    iput p6, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mSelectedIndex:I

    .line 65
    iput-object p5, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    .line 62
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v4, 0x7f13001f

    const/4 v3, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference$AppArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    .line 71
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f040010

    invoke-virtual {v8, v0, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 72
    .local v1, "view":Landroid/view/View;
    const v0, 0x7f13001e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 73
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/settings/AppListPreference$AppArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget v0, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mSelectedIndex:I

    if-ne p1, v0, :cond_0

    .line 75
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :cond_0
    const v0, 0x7f13001d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 78
    .local v7, "imageView":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings/AppListPreference;

    iget-object v0, v0, Lcom/android/settings/AppListPreference;->mExt:Lcom/mediatek/settings/ext/IAppListExt;

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings/AppListPreference;

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference$AppArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/settings/UtilsExt;->getAppListPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IAppListExt;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/AppListPreference;->mExt:Lcom/mediatek/settings/ext/IAppListExt;

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings/AppListPreference;

    iget-object v0, v0, Lcom/android/settings/AppListPreference;->mExt:Lcom/mediatek/settings/ext/IAppListExt;

    .line 84
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 85
    iget-object v4, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v4, p1

    move v4, p1

    move-object v6, p3

    .line 83
    invoke-interface/range {v0 .. v6}, Lcom/mediatek/settings/ext/IAppListExt;->addLayoutAppView(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;ILandroid/graphics/drawable/Drawable;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
