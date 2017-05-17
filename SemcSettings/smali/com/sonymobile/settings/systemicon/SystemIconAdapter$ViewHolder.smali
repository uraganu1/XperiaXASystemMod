.class final Lcom/sonymobile/settings/systemicon/SystemIconAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SystemIconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/systemicon/SystemIconAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewHolder"
.end annotation


# instance fields
.field final checkBox:Landroid/widget/CheckBox;

.field final icon:Landroid/widget/ImageView;

.field final text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "ic"    # Landroid/widget/ImageView;
    .param p2, "te"    # Landroid/widget/TextView;
    .param p3, "ch"    # Landroid/widget/CheckBox;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sonymobile/settings/systemicon/SystemIconAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 39
    iput-object p2, p0, Lcom/sonymobile/settings/systemicon/SystemIconAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 40
    iput-object p3, p0, Lcom/sonymobile/settings/systemicon/SystemIconAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 41
    return-void
.end method
