import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UnderAppBarOptions extends HookConsumerWidget {
  const UnderAppBarOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: isDarkMode ? const Color(0xFF121212) : Colors.white,
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 4,
            color: Color(0x24000000),
          )
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _SortOption(),
          SizedBox(
            height: 30,
            child: VerticalDivider(
              color: Colors.grey,
              thickness: 1,
              width: 0,
            ),
          ),
          _FilterOption(),
        ],
      ),
    );
  }
}

class _SortOption extends StatelessWidget {
  const _SortOption();

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return Expanded(
      child: InkWell(
        onTap: () => showModalBottomSheet<void>(
          context: context,
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('ترتيب'),
                      IconButton(
                        onPressed: () => Navigator.pop(
                          context,
                        ),
                        icon: const Icon(
                          Icons.close,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Divider(
                    height: 1,
                    thickness: .3,
                  ),
                  InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () => Navigator.pop(context),
                    child: Column(
                      children: [
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('الموصى به'),
                              ],
                            ),
                            Radio(
                              value: 'radio',
                              groupValue: 'radio',
                              onChanged: (value) {},
                            )
                          ],
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 1,
                    thickness: .3,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.fireplace_sharp,
                          ),
                          SizedBox(width: 8),
                          Text('جديد'),
                        ],
                      ),
                      Radio(
                        value: 'new',
                        groupValue: 'radio',
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Divider(
                    height: 1,
                    thickness: .3,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.sort),
                          SizedBox(width: 8),
                          Text(
                            'السعر (من الأعلى إلى الأقل)',
                          ),
                        ],
                      ),
                      Radio(
                        value: 'priceAsc',
                        groupValue: 'radio',
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Divider(
                    height: 1,
                    thickness: .3,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.sort),
                          SizedBox(width: 8),
                          Text(
                            'السعر (من الأقل إلى الأعلى)',
                          ),
                        ],
                      ),
                      Radio(
                        value: 'priceDsc',
                        groupValue: 'radio',
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Divider(
                    height: 1,
                    thickness: .3,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.discount),
                          SizedBox(width: 8),
                          Text('تخفيضات'),
                        ],
                      ),
                      Radio(
                        value: 'discount',
                        groupValue: 'radio',
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.arrow_drop_down),
            const SizedBox(
              width: 4,
            ),
            Text(
              'ترتيب',
              style: appTheme.textTheme.bodyLarge,
            )
          ],
        ),
      ),
    );
  }
}

class _FilterOption extends StatelessWidget {
  const _FilterOption();

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return Expanded(
      child: InkWell(
        onTap: () => showModalBottomSheet<void>(
          context: context,
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('تصفية'),
                      IconButton(
                        onPressed: () => Navigator.pop(
                          context,
                        ),
                        icon: const Icon(
                          Icons.close,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Divider(
                    height: 1,
                    thickness: .3,
                  ),
                  InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () => Navigator.pop(context),
                    child: const Column(
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text('الفئة'),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 1,
                    thickness: .3,
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('الماركات'),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Divider(
                    height: 1,
                    thickness: .3,
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('الألوان'),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Divider(
                    height: 1,
                    thickness: .3,
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('الأحجام'),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Divider(
                    height: 1,
                    thickness: .3,
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('الأسعار'),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                      )
                    ],
                  ),
                ],
              ),
            );
          },
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.filter),
            const SizedBox(
              width: 4,
            ),
            Text(
              'تصفية',
              style: appTheme.textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
