.class Lio/intercom/com/bumptech/glide/load/b/e$c$1;
.super Ljava/lang/Object;
.source "DataUrlLoader.java"

# interfaces
.implements Lio/intercom/com/bumptech/glide/load/b/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/com/bumptech/glide/load/b/e$c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/com/bumptech/glide/load/b/e$a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/intercom/com/bumptech/glide/load/b/e$c;


# direct methods
.method constructor <init>(Lio/intercom/com/bumptech/glide/load/b/e$c;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lio/intercom/com/bumptech/glide/load/b/e$c$1;->a:Lio/intercom/com/bumptech/glide/load/b/e$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 147
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0, p1}, Lio/intercom/com/bumptech/glide/load/b/e$c$1;->b(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lio/intercom/com/bumptech/glide/load/b/e$c$1;->a(Ljava/io/InputStream;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4

    const-string v0, "data:image"

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2c

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    .line 129
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";base64"

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 137
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 131
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a base64 image data URL."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing comma in data URL."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a valid image data URL."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
