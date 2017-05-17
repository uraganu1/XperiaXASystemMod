.class public Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;
.super Ljava/lang/Object;
.source "RichAddressBookData.java"


# static fields
.field static final CONTENT_URI:Landroid/net/Uri;

.field public static final FALSE_VALUE:Ljava/lang/String;

.field public static final TRUE_VALUE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "content://com.sonymobile.rcs.eab/eab"

    .line 32
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    .line 252
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->TRUE_VALUE:Ljava/lang/String;

    .line 257
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->FALSE_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
