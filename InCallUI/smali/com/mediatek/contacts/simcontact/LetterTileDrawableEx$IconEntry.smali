.class Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx$IconEntry;
.super Ljava/lang/Object;
.source "LetterTileDrawableEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IconEntry"
.end annotation


# instance fields
.field public iconBitmap:Landroid/graphics/Bitmap;

.field public iconTint:I

.field final synthetic this$0:Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx$IconEntry;->this$0:Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
