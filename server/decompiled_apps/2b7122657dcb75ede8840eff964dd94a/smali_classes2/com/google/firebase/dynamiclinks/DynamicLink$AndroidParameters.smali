.class public final Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/dynamiclinks/DynamicLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidParameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;
    }
.end annotation


# instance fields
.field final zzv:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters;->zzv:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Lcom/google/firebase/dynamiclinks/zza;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters;-><init>(Landroid/os/Bundle;)V

    return-void
.end method
