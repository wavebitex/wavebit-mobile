import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wavebitex/presentation/auth/auth_switch.dart';
import 'package:wavebitex/presentation/auth/cubit/auth_cubit.dart';
import 'package:wavebitex/presentation/auth/helpers/auth_helpers.dart';
import 'package:wavebitex/widgets/modals/custom_modal_bottom_sheet.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  Widget _buildTile({
    required Widget Leading,
    required Widget title,
    required Widget subTitile,
    required Widget trailing,
    required Function ontap,
  }) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.grey.withOpacity(0.3))),
        child: ListTile(
          leading: Leading,
          title: title,
          subtitle: subTitile,
          trailing: trailing,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
      height: _size.height,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.close),
              ),
            ],
          ),
          Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'My Account',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )),
          const SizedBox(height: 10),
          Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              'Manage your profile settings',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: _size.height * 0.8,
            child: ListView(
              padding: const EdgeInsets.only(top: 10),
              children: [
                _buildTile(
                    ontap: () {},
                    Leading: const Icon(Icons.person),
                    title: const Text('Personal Information'),
                    subTitile: const Text('Manage basic info and username'),
                    trailing: const Icon(Icons.chevron_right)),
                const SizedBox(height: 14),
                _buildTile(
                    ontap: () {},
                    Leading: const Icon(Icons.vpn_key),
                    title: const Text('Password'),
                    subTitile: const Text('Change your password'),
                    trailing: const Icon(Icons.chevron_right)),
                const SizedBox(height: 14),
                _buildTile(
                    ontap: () {},
                    Leading: const Icon(Icons.call_merge_rounded),
                    title: const Text('Withdrawal Pin'),
                    subTitile: const Text('Manage your withdrawal pin'),
                    trailing: const Icon(Icons.chevron_right)),
                const SizedBox(height: 14),
                _buildTile(
                    ontap: () {},
                    Leading: const Icon(Icons.share),
                    title: const Text('Referrals'),
                    subTitile: const Text('Refer and earn'),
                    trailing: const Icon(Icons.chevron_right)),
                const SizedBox(height: 14),
                _buildTile(
                    ontap: () {},
                    Leading: const Icon(Icons.fingerprint),
                    title: const Text('Biometry'),
                    subTitile: const Text('Login with biometry'),
                    trailing: const Icon(Icons.chevron_right)),
                const SizedBox(height: 14),
                _buildTile(
                    ontap: () {},
                    Leading: const Icon(Icons.notifications),
                    title: const Text('Notifications'),
                    subTitile: const Text('Stay up to date with market'),
                    trailing: const Icon(Icons.chevron_right)),
                const SizedBox(height: 14),
                _buildTile(
                    ontap: () {},
                    Leading: const Icon(Icons.help_outline),
                    title: const Text('Get Help'),
                    subTitile: const Text('Contact customer care'),
                    trailing: const Icon(Icons.chevron_right)),
                const SizedBox(height: 14),
                BlocBuilder<AuthCubit, AuthState>(
                  builder: (innerContext, state) {
                    return _buildTile(
                        ontap: () async {
                          AppModal.showMaterialModalBottomSheet(
                            context: context,
                            title: "Are you sure you want to log out?",
                            action: () async{
                                 await AuthHelpers.logOut();
                          innerContext.read<AuthCubit>().reset();
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) => AuthSwitch()));
                            }
                          );
                        },
                        Leading: const Icon(Icons.login_outlined),
                        title: const Text('Log Out'),
                        subTitile: const Text('Lorem ipsum jlaksdjs afda'),
                        trailing: const Icon(Icons.chevron_right));
                  },
                ),
                const SizedBox(height: 14),
              ],
            ),
          )
          // SizedBox(child: f,)
        ],
      ),
    );
  }
}
