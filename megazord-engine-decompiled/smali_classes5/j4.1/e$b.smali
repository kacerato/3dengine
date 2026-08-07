.class public Lj4/e$b;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj4/e;->e(Ljava/io/File;Ljava/lang/String;Lj4/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lk4/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$file",
            "val$destination"
        }
    .end annotation

    iput-object p1, p0, Lj4/e$b;->b:Ljava/io/File;

    iput-object p2, p0, Lj4/e$b;->c:Ljava/io/File;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lk4/a;

    invoke-direct {v0, p1, p2}, Lk4/a;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
