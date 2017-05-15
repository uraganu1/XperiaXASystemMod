.class Lcom/mediatek/audioprofile/Editprofile$3;
.super Ljava/lang/Object;
.source "Editprofile.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/audioprofile/Editprofile;->setPreferenceListener(Ljava/lang/String;Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/Editprofile;

.field final synthetic val$preferenceType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/Editprofile;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/audioprofile/Editprofile;
    .param p2, "val$preferenceType"    # Ljava/lang/String;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/mediatek/audioprofile/Editprofile$3;->this$0:Lcom/mediatek/audioprofile/Editprofile;

    iput-object p2, p0, Lcom/mediatek/audioprofile/Editprofile$3;->val$preferenceType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile$3;->this$0:Lcom/mediatek/audioprofile/Editprofile;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile$3;->val$preferenceType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mediatek/audioprofile/Editprofile;->-wrap1(Lcom/mediatek/audioprofile/Editprofile;ZLjava/lang/String;)V

    .line 488
    const/4 v0, 0x1

    return v0
.end method
