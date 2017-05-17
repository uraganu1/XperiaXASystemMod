.class Lcom/sonymobile/settings/systemicon/SystemIconAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SystemIconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/systemicon/SystemIconAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sonymobile/settings/systemicon/SystemIconInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final ICON_TAG:Ljava/lang/String; = "drawable"

.field private static final TEXT_TAG:Ljava/lang/String; = "string"


# instance fields
.field private final mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p4, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/settings/systemicon/SystemIconInfo;",
            ">;",
            "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/settings/systemicon/SystemIconInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 47
    iput-object p4, p0, Lcom/sonymobile/settings/systemicon/SystemIconAdapter;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 48
    return-void
.end method


# virtual methods
.method public getItemByName(Ljava/lang/String;)Lcom/sonymobile/settings/systemicon/SystemIconInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/systemicon/SystemIconAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 90
    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/systemicon/SystemIconAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/systemicon/SystemIconInfo;

    .line 91
    .local v1, "item":Lcom/sonymobile/settings/systemicon/SystemIconInfo;
    invoke-virtual {v1}, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    .end local v1    # "item":Lcom/sonymobile/settings/systemicon/SystemIconInfo;
    :goto_1
    return-object v1

    .line 89
    .restart local v1    # "item":Lcom/sonymobile/settings/systemicon/SystemIconInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "item":Lcom/sonymobile/settings/systemicon/SystemIconInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/systemicon/SystemIconAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/settings/systemicon/SystemIconInfo;

    .line 54
    .local v2, "item":Lcom/sonymobile/settings/systemicon/SystemIconInfo;
    invoke-virtual {p0}, Lcom/sonymobile/settings/systemicon/SystemIconAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    .local v0, "context":Landroid/content/Context;
    if-nez p2, :cond_0

    move-object v3, v0

    .line 56
    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030005

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    new-instance v1, Lcom/sonymobile/settings/systemicon/SystemIconAdapter$ViewHolder;

    const v3, 0x7f0b0005

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0b0006

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0b0007

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-direct {v1, v3, v4, v5}, Lcom/sonymobile/settings/systemicon/SystemIconAdapter$ViewHolder;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/CheckBox;)V

    .line 62
    .local v1, "holder":Lcom/sonymobile/settings/systemicon/SystemIconAdapter$ViewHolder;
    iget-object v3, v1, Lcom/sonymobile/settings/systemicon/SystemIconAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/sonymobile/settings/systemicon/SystemIconAdapter;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 63
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    iget-object v3, v1, Lcom/sonymobile/settings/systemicon/SystemIconAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 70
    :goto_0
    iget-object v3, v1, Lcom/sonymobile/settings/systemicon/SystemIconAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->getIconNameId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object v3, v1, Lcom/sonymobile/settings/systemicon/SystemIconAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 74
    iget-object v3, v1, Lcom/sonymobile/settings/systemicon/SystemIconAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->getTextNameId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "string"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 76
    iget-object v3, v1, Lcom/sonymobile/settings/systemicon/SystemIconAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 78
    iget-object v3, v1, Lcom/sonymobile/settings/systemicon/SystemIconAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->isActivated()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 79
    iget-object v3, v1, Lcom/sonymobile/settings/systemicon/SystemIconAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 80
    return-object p2

    .line 66
    .end local v1    # "holder":Lcom/sonymobile/settings/systemicon/SystemIconAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/systemicon/SystemIconAdapter$ViewHolder;

    .line 67
    .restart local v1    # "holder":Lcom/sonymobile/settings/systemicon/SystemIconAdapter$ViewHolder;
    iget-object v3, v1, Lcom/sonymobile/settings/systemicon/SystemIconAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/systemicon/SystemIconAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/systemicon/SystemIconInfo;

    invoke-virtual {v0}, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->isEnabled()Z

    move-result v0

    return v0
.end method
