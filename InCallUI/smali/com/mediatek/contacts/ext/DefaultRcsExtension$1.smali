.class Lcom/mediatek/contacts/ext/DefaultRcsExtension$1;
.super Ljava/lang/Object;
.source "DefaultRcsExtension.java"

# interfaces
.implements Lcom/mediatek/contacts/ext/IRcsExtension$ContactListItemRcsView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/ext/DefaultRcsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/ext/DefaultRcsExtension;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/ext/DefaultRcsExtension;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/contacts/ext/DefaultRcsExtension;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/mediatek/contacts/ext/DefaultRcsExtension$1;->this$0:Lcom/mediatek/contacts/ext/DefaultRcsExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCustomView(JLandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "contactId"    # J
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 251
    return-void
.end method

.method public getWidthWithPadding()I
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "leftBound"    # I
    .param p3, "topBound"    # I
    .param p4, "rightBound"    # I
    .param p5, "bottomBound"    # I

    .prologue
    .line 246
    return-void
.end method

.method public onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 240
    return-void
.end method
