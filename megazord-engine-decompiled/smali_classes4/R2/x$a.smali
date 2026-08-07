.class public final LR2/x$a;
.super LR2/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LR2/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/regex/Matcher;


# direct methods
.method public constructor <init>(Ljava/util/regex/Matcher;)V
    .locals 0

    invoke-direct {p0}, LR2/g;-><init>()V

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/regex/Matcher;

    iput-object p1, p0, LR2/x$a;->a:Ljava/util/regex/Matcher;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, LR2/x$a;->a:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, LR2/x$a;->a:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public c(I)Z
    .locals 1

    iget-object v0, p0, LR2/x$a;->a:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LR2/x$a;->a:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LR2/x$a;->a:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, LR2/x$a;->a:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    return v0
.end method
